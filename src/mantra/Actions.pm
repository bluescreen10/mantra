class mantra::Actions is HLL::Actions;

# Called at the beginning of the parsing usefull to wrap up everything
method begin($/) {
    our $?BLOCK;
    our @?BLOCK;

    $?BLOCK := PAST::Block.new(:hll<mantra>, :blocktype<declaration>);
    @?BLOCK.push($?BLOCK);

}

method TOP($/) {
    our $?BLOCK;
    our @?BLOCK;

    # Get the parent block
    my $past := @?BLOCK.pop();
    $past.push($<statement_list>.ast);
    make $past;
}

# Statements
method statement_list($/) {
    my $past := PAST::Stmts.new();

    for $<statement> {
        $past.push($_.ast);
    }

    make $past;
}

method statement($/) {
    if $<expression> {
        make $<expression>.ast;
    }
}

method return_statement($/) {
    make PAST::Op.new( :inline(
            'store_lex "!retr_value", %0',
            '$P0 = find_lex "!retr"',
            '.tailcall $P0()'
        ),
        $<basic_expression>.ast
    );
}

method basic_expression($/) {
    if $<primitive> {
        make $<primitive>.ast;
    } elsif $<primary> {
        if $<message> {
            my $past := PAST::Stmts.new();
            for $<message> {
                $past.push($_.ast);
                $_.ast.unshift($<primary>.ast);
            }
            make $past;
        } else {
            make $<primary>.ast;
        }
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
#                my $next := PAST::Op.new( :name('!call_method'),
                my $next := PAST::Op.new( :name('execute:withArgs:'),
                                        :pasttype('callmethod'),
                                        :node($/) );
                $next.push($past);
                $next.push($message);
                $past := $next;
            } else {
#                $past := PAST::Op.new( :name('!call_method'),
                $past := PAST::Op.new( :name('execute:withArgs:'),
                                        :pasttype('callmethod'),
                                        :node($/) );
#               $past.push($<primary>.ast);
                $past.push($message);
            }
        }

        for $<binary_second> {
            my $message := PAST::Val.new( :returns<String>,
                                          :value($_<method_name>) );

#            my $next := PAST::Op.new( :name('!call_method'),
            my $next := PAST::Op.new( :name('execute:withArgs:'),
                                      :pasttype('callmethod'),
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
#        $past.unshift($<primary>.ast);
    } elsif $<keyword_first> {
        $past := $<keyword_first>.ast;
#        $past.unshift($<primary>.ast);
    }
    make $past;
}

method binary_message($/) {
    my $argument;

    for $<unary_method> {
        my $message := PAST::Val.new( :returns<String>,
                                      :value($_) );
        if $argument {
#            my $next := PAST::Op.new( :name('!call_method'),
            my $next := PAST::Op.new( :name('execute:withArgs:'),
                                      :pasttype('callmethod'),
                                      :node($/) );
            $next.push($argument);
            $next.push($message);
            $argument := $next;
        } else {
#            $argument := PAST::Op.new( :name('!call_method'),
            $argument := PAST::Op.new( :name('execute:withArgs:'),
                                       :pasttype('callmethod'),
                                       :node($/) );
            $argument.push($<primary>.ast);
            $argument.push($message);
        }
    }

    unless $argument {
        $argument := $<primary>.ast;
    }

#    my $past := PAST::Op.new( :name('!call_method'),
    my $past := PAST::Op.new( :name('execute:withArgs:'),
                              :pasttype('callmethod'),
                              :node($/) );
    $past.push(PAST::Val.new( :returns<String>,
                              :value($<method_name>) ) );
    $past.push($argument);
    make $past;

}

method keyword_message($/) {
#    my $past := PAST::Op.new( :name('!call_method'),
    my $past := PAST::Op.new( :name('execute:withArgs:'),
                              :pasttype('callmethod'),
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
#            my $next := PAST::Op.new( :name('!call_method'),
            my $next := PAST::Op.new( :name('execute:withArgs:'),
                                      :pasttype('callmethod'),
                                      :node($/) );
            $next.push($primary);
            $next.push($message);
            $primary := $next;
        } else {
#            $primary := PAST::Op.new( :name('!call_method'),
            $primary := PAST::Op.new( :name('execute:withArgs:'),
                                      :pasttype('callmethod'),
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
    }
    elsif $<literal> {
        make $<literal>.ast;
    }
    elsif $<basic_expression> {
        make $<basic_expression>.ast
    }
    elsif $<block> {
        make $<block>.ast;
    }
}

method variable($/) {
    if $<pseudo_variable_self> {
        make $<pseudo_variable_self>.ast;
    }
    elsif $<pseudo_variable_object> {
        make $<pseudo_variable_object>.ast;
    }
    elsif $<instance_variable> {
        make $<instance_variable>.ast;
    }
    elsif $<lexical_variable> {
        make $<lexical_variable>.ast;
    }
}

method instance_variable ($/) {
    our %ATTRIBUTES;
    %ATTRIBUTES{~$<ident>} := 1;
    my $past := PAST::Var.new( :name(~$<ident>), :scope<attribute>, :node($/) );
    make $past;
}

method pseudo_variable_self($/) {
    make PAST::Var.new( :name<self>, :scope<lexical> );
}

method pseudo_variable_object($/) {
    make PAST::Var.new( :name<Object>, :scope<package> );
}


method literal($/) {
    my $past;

    if $<string_constant> {
        $past := $<string_constant>.ast;
    }

    make $past;
}

method primitive($/) {
    make $<primitive_contents>.ast;
}

method primitive_contents($/) {
    my $past := PAST::Op.new( :name($<identifier>));
    for $<primary> {
        $past.push($_.ast);
    }
    make $past;
}

method assignment($/) {
    our @?BLOCK;
    our $?BLOCK;

    #TODO: Rethink this ---------------

    my $past := PAST::Stmts.new();


    #------8<--------------------------



    # my $variable := PAST::Var.new(:name($name),
    #                               :scope<lexical>,
    #                               :viviself<Undef>,
    #                               :node($/) );
    my $variable := $<assignment_target>.ast;
    my $variable_scope := $variable.scope();
    my $variable_name := $variable.name();

    if $variable_scope eq 'lexical' {
        $variable.isdecl(1);
        for @?BLOCK {
            if $_.symbol( $variable_name) {
                $variable.isdecl(0);
            }
        }
    }

#         if $variable.isdecl {
#             $?BLOCK.symbol( $variable_name, :scope<lexical>);
# #            $past.push( PAST::Op.new( :inline(".lex \"$variable_name\", ")));
# #            $variable.isdecl(0);
#             my $variable2 := PAST::Var.new(:name($variable_name),
#                                     :scope<lexical>,
#                                     :viviself<Undef>,
#                                     :node($/) );
#             $past.push( PAST::Op.new( $variable2,
#                                    PAST::Val.new(:returns<Integer>, :value(0)),
#                                    :pasttype<bind>,
#                                    :node($/) ) );
#             $variable2.isdecl(1);
#             $variable.isdecl(0);
#         }

#     }



    $variable.lvalue(1);
    my $value := $<basic_expression>.ast;

    $past.push( PAST::Op.new( $variable,
                              $value,
                              :pasttype<bind>,
                              :node($/) ) );
    make $past;
}

method assignment_target($/) {
    make $<variable>.ast;
}

method lexical_variable($/) {
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


# BLOCK
method begin_block($/) {
    our $?BLOCK;
    our @?BLOCK;

    $?BLOCK := PAST::Block.new(:blocktype<declaration>);
    $?BLOCK.closure(1);
    @?BLOCK.push($?BLOCK);

}

method block($/) {
    our $?BLOCK;
    our @?BLOCK;

    @?BLOCK.pop();

    $?BLOCK := @?BLOCK[-1];

#    my $past := PAST::Op.new( :name('!call_method'),
    my $past := PAST::Op.new( :name('execute:withArgs:'),
                              :pasttype('callmethod'),
                              :node($/) );

    $past.push(PAST::Var.new( :name<Block>, :scope<package> ));
    $past.push(PAST::Val.new( :returns<String>,:value('content:')));
    $past.push($<block_contents>.ast);
    make $past;
}

method block_contents($/) {
    our $?BLOCK;
    our @?BLOCK;

    for $<ident> {
        $?BLOCK.push( PAST::Var.new( :name($_), :scope<parameter> ) );
    }

    $?BLOCK.push($<statement_list>.ast);
    make $?BLOCK;
}

method string_constant($/) {
    my $past := $<quote>.ast;
    $past.returns('String');
    make $past;
}

method quote:sym<'>($/) { make $<quote_EXPR>.ast; }
method quote:sym<">($/) { make $<quote_EXPR>.ast; }
