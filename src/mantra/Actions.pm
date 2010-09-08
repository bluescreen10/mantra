class mantra::Actions is HLL::Actions;

method compiler_init($/) {
    our $?BLOCK;
    our @?BLOCK;

    $?BLOCK := PAST::Block.new(:hll<mantra>, :blocktype<declaration>);
    @?BLOCK.unshift($?BLOCK);

}

method TOP($/) {
    our $?BLOCK;
    our @?BLOCK;

    # Get the parent block
    my $past := @?BLOCK.shift();
    $past.push($<main>.ast);
    make $past;
}

method main($/) {
    my $past := PAST::Stmts.new( :node($/) );
    for $<statement_or_class> {
        $past.push($_.ast);
    }
    make $past;
}

method statement_or_class($/) {
    make $<class_definition>.ast;
}

method begin_class($/) {
    our $?BLOCK;
    our @?BLOCK;
    our %ATTRIBUTES;

    #my $past := $?BLOCK;
    $?BLOCK := PAST::Block.new(:blocktype<declaration>,:node($/));
    @?BLOCK.unshift($?BLOCK);
    %ATTRIBUTES := {};
}

method class_name($/) {
    our $?CLASS;
    $?CLASS := ~$<class_identifier>;
}

method class_definition($/) {
    our $?BLOCK;
    our @?BLOCK;
    our $?CLASS;
    our %ATTRIBUTES;

    my $past := $?BLOCK;
    #my $past := PAST::Block.new(:blocktype<declaration>,:node($/));

    # Create the class defintion
    #$?CLASS := ~$<class_name>;
    mantra::Metaclass.create_class($?CLASS, $<superclass>, %ATTRIBUTES);# ,$<superclass>, keys %?ATTRIBUTES);

    
    # Methods
    for $<method_definition> {
         my $method := $_.ast;
         $method.namespace( $<class_name> );
         $past.push($method);
    }

    #$?BLOCK.push($past);
    @?BLOCK.shift();
    $?BLOCK := @?BLOCK[0];
    make $past;
    #make $create_class;
}


method class_identifier($/) {
    make PAST::Val.new( :returns<String>, :value($/), :node($/));
}

method begin_method_definition($/) {
    our $?BLOCK;
    our @?BLOCK;

    $?BLOCK := PAST::Block.new(:blocktype<method>,:node($/));

    # Binary method
    if $<binary_method> {
        $?BLOCK.name($<binary_method><method_name>);
        $?BLOCK.push( PAST::Var.new( :scope<parameter>, :name($<binary_method><param>) ));
        $?BLOCK.symbol($<binary_method><param>, :scope<lexical>);
    }

    # Keyword method
    elsif $<keyword_method> {
        $?BLOCK.name(pir::join(':',$<keyword_method><method_name>)~':');
        for $<keyword_method><param> {
            $?BLOCK.push( PAST::Var.new( :scope<parameter>, :name($_) ));
            $?BLOCK.symbol($_, :scope<lexical>);
        }
    }

    # Unary
    elsif $<unary_method> {
        $?BLOCK.name($<unary_method>);
    }


    @?BLOCK.unshift($?BLOCK);
}

method method_definition($/) {
    our $?BLOCK;
    our @?BLOCK;

    my $past := $?BLOCK;

    # Add statements
    $past.push($<statement_list>.ast);

    @?BLOCK.shift();
    $?BLOCK := @?BLOCK[0];
    make $past;
}

method statement_list($/) {
    my $past := PAST::Stmts.new();

    for $<statement> {
        $past.push($_.ast);
    }

    # by default return self
    my $return_statement := PAST::Op.new( :pasttype<pirop>, :pirop<return> );
    $return_statement.push(PAST::Var.new( :name<self>, :scope<register> ) );
    $past.push($return_statement);

    make $past;
}

method statement($/) {
    my $past;
    if $<expression> {
        $past := $<expression>.ast;
    }

    make $past;
}

method return_statement($/) {
    my $past := PAST::Op.new( :pasttype<pirop>, :pirop<return> );
    $past.push($<basic_expression>.ast);
    make $past;
}

method basic_expression($/) {
    if $<primitive> {
        make $<primitive>.ast;
    } elsif $<message> {
        make $<message>.ast;
    } elsif $<primary> {
        make $<primary>.ast;
    }
}

method expression($/) {
    if $<basic_expression> {
        make $<basic_expression>.ast;
    } elsif $<assignment> {
        make $<assignment>.ast;
    } elsif $<return_statement> {
        make $<return_statement>.ast;
    }
}

method message($/) {
    my $past;

    # Unary message
    if $<unary_first> {
        for $<unary_first> {
            my $message := PAST::Val.new( :returns<String>,
                                          :value($_) );
            if $past {
                my $next := PAST::Op.new( :name('!call_method'),
                                        :pasttype('call'),
                                        :node($/) );
                $next.push($past);
                $next.push($message);
                $past := $next;
            } else {
                $past := PAST::Op.new( :name('!call_method'),
                                        :pasttype('call'),
                                        :node($/) );
                $past.push($<primary>.ast);
                $past.push($message);
            }
        }

        for $<binary_second> {
            my $message := PAST::Val.new( :returns<String>,
                                          :value($_<method_name>) );

            my $next := PAST::Op.new( :name('!call_method'),
                                      :pasttype('call'),
                                      :node($/) );
            $next.push($past);
            $next.push($message);
            $next.push($_<primary>.ast);
            $past := $next;
        }

        if $<keyword_third> {
            my $next := $<keyword_third>[0].ast;
            $next.unshift($past);
            $past := $next;
        }


    # Binary message
    } elsif $<binary_first> {
        $past := $<binary_first>.ast;
        $past.unshift($<primary>.ast);
    } elsif $<keyword_first> {
        $past := $<keyword_first>.ast;
        $past.unshift($<primary>.ast);
    }
    make $past;
}

method binary_message($/) {
    my $argument;

    for $<unary_method> {
        my $message := PAST::Val.new( :returns<String>,
                                      :value($_) );
        if $argument {
            my $next := PAST::Op.new( :name('!call_method'),
                                      :pasttype('call'),
                                      :node($/) );
            $next.push($argument);
            $next.push($message);
            $argument := $next;
        } else {
            $argument := PAST::Op.new( :name('!call_method'),
                                       :pasttype('call'),
                                       :node($/) );
            $argument.push($<primary>.ast);
            $argument.push($message);
        }
    }

    unless $argument {
        $argument := $<primary>.ast;
    }

    my $past := PAST::Op.new( :name('!call_method'),
                              :pasttype('call'),
                              :node($/) );
    $past.push(PAST::Val.new( :returns<String>,
                              :value($<method_name>) ) );
    $past.push($argument);
    make $past;

}

method keyword_message($/) {
    my $past := PAST::Op.new( :name('!call_method'),
                              :pasttype('call'),
                              :node($/) );
    $past.push(PAST::Val.new( :returns<String>,
                              :value(pir::join(':',$<method_name>)~':') ) );
    for $<keyword_argument> {
        $past.push( $_.ast );
    }
    make $past;
}

method keyword_argument($/) {
    my $primary;
    for $<unary_method> {
        my $message := PAST::Val.new( :returns<String>,
                                      :value($_) );
        if $primary {
            my $next := PAST::Op.new( :name('!call_method'),
                                      :pasttype('call'),
                                      :node($/) );
            $next.push($primary);
            $next.push($message);
            $primary := $next;
        } else {
            $primary := PAST::Op.new( :name('!call_method'),
                                      :pasttype('call'),
                                      :node($/) );
            $primary.push($<primary>.ast);
            $primary.push($message);
        }
    }

    unless $primary {
        $primary := $<primary>.ast;
    }

    my $past;

    for $<binary_message> {
        $past := $_.ast;
        $past.unshift($primary);
        $primary := $past;
    }

        if $past {
            make $past;
        } else {
            make $primary
        }
}

method primary($/) {
    if $<variable> {
        make $<variable>.ast;
    } elsif $<literal> {
        make $<literal>.ast;
    } elsif $<basic_expression> {
        make $<basic_expression>.ast
    }
}

method variable($/) {
    if $<pseudo_variable_self> {
        make $<pseudo_variable_self>.ast;
    } elsif $<writable_variable> {
        make $<writable_variable>.ast;
    }
}

method writable_variable($/) {
    if $<instance_variable> {
        make $<instance_variable>.ast;
    } elsif $<local_variable> {
        make $<local_variable>.ast;
    }
}

method instance_variable ($/) {
    our %ATTRIBUTES;
    %ATTRIBUTES{~$<ident>} := 1;
    my $past := PAST::Var.new( :name(~$<ident>), :scope<attribute>, :node($/) );
    make $past;
}

method pseudo_variable_self($/) {
    make PAST::Var.new( :name<self>, :scope<register> );
}

method literal($/) {
    my $past;

    if $<string_constant> {
        $past := $<string_constant>.ast;
    }

    make $past;
}

method primitive($/) {
    my $past := PAST::Op.new( :name($<identifier>));
    for $<primary> {
        $past.push($_.ast);
    }
    make $past;
}

method assignment($/) {
    our @?BLOCK;
    our $?BLOCK;
    our $?CLASS;

    #TODO: Rethink this ---------------

    my $past := PAST::Stmts.new();


    #------8<--------------------------



    # my $variable := PAST::Var.new(:name($name),
    #                               :scope<lexical>,
    #                               :viviself<Undef>,
    #                               :node($/) );

    my $variable := $<writable_variable>.ast;
    my $variable_scope := $variable.scope();
    my $variable_name := $variable.name();

    if $variable_scope eq 'lexical' {
        $variable.isdecl(1);
        for @?BLOCK {
            if $_.symbol( $variable_name) {
                $variable.isdecl(0);
            }
        }

        if $variable.isdecl {
            $?BLOCK.symbol( $variable_name, :scope<lexical>);
#            $past.push( PAST::Op.new( :inline(".lex \"$variable_name\", ")));
#            $variable.isdecl(0);
            my $variable2 := PAST::Var.new(:name($variable_name),
                                    :scope<lexical>,
                                    :viviself<Undef>,
                                    :node($/) );
            $past.push( PAST::Op.new( $variable2,
                                   PAST::Val.new(:returns<Integer>, :value(0)),
                                   :pasttype<bind>,
                                   :node($/) ) );
            $variable2.isdecl(1);
            $variable.isdecl(0);
        }

    }



    $variable.lvalue(1);
    my $value := $<basic_expression>.ast;

    $past.push( PAST::Op.new( $variable,
                              $value,
                              :pasttype<bind>,
                              :node($/) ) );
    make $past;
}

method local_variable($/) {
    our @?BLOCK;

    my $name := $<name>;

    my $defined := 0;

    for @?BLOCK {
        if $_.symbol($name) {
            $defined := 1;
        }
    }

#    if $defined {
        make PAST::Var.new( :name($name),
                            :scope<lexical>,
                            :viviself<Undef>,
                            :node($/) );
#    } else {
#        $/.CURSOR.panic("Error: local variable " ~$name~ " was not defined yet");
#    }

}

method string_constant($/) {
    my $past := $<quote>.ast;
    $past.returns('String');
    make $past;
}

method quote:sym<'>($/) { make $<quote_EXPR>.ast; }
method quote:sym<">($/) { make $<quote_EXPR>.ast; }

# method need($module_name) {
#     our @?BLOCK;
#     our %LOADED;

#     unless %LOADED{$module_name} {
#      %LOADED{$module_name} :=1;
#         my $pm_file := "src/lib/"~$module_name~".ma";
#         my $fh     := pir::open__PSS($pm_file, 'r');
#         $fh.encoding('utf8');
#         my $source := $fh.readall();
#         $fh.close();
#         my $eval := mantra::Compiler.compile($source);
#         #say($eval);
#         $eval();
#    }
# }

