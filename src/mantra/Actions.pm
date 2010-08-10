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

   $past.push($<class_definition>.ast);


    # Startup Code
    my $pir := " %r = new \"Startup\" \n"
             ~ " %r.\"main\"()";

    $past.push(PAST::Op.new(:inline($pir)));

    make $past;
}

method begin_class($/) {
    our $?BLOCK;
    our @?BLOCK;

    #my $past := $?BLOCK;
    $?BLOCK := PAST::Block.new(:blocktype<declaration>,:node($/));
    @?BLOCK.unshift($?BLOCK);
}

method class_definition($/) {
    our $?BLOCK;
    our @?BLOCK;

    my $past := $?BLOCK;
    #my $past := PAST::Block.new(:blocktype<declaration>,:node($/));

    # Create the class defintion
    # Primitive
    my $create_class := PAST::Op.new(:name('!create_class'), :node($/));
    @?BLOCK[-1].push($create_class);
    #$past.push($create_class);

    # # Class name
    $create_class.push($<class_name>.ast);

    # Super classes
    #for $<superclass> {
    #    $create_class.push($($_));
    #}

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

    } elsif $<binary_first> {
        $past := PAST::Op.new( :name('!call_method'),
                               :pasttype('call'),
                               :node($/) );
        $past.push($<primary>.ast);
        $past.push(PAST::Val.new( :returns<String>,
                                  :value($<binary_first><method_name>) ) );
        $past.push($<binary_first><primary>.ast);
    } elsif $<keyword_first> {
        $past := PAST::Op.new( :name('!call_method'),
                               :pasttype('call'),
                               :node($/) );
        $past.push($<primary>.ast);
        $past.push(PAST::Val.new( :returns<String>,
                                  :value(pir::join(':',$<keyword_first><method_name>)~':') ) );
        for $<keyword_first><primary> {
            $past.push( $_.ast );
        }
    }
    make $past;
}

method primary($/) {
    my $past;

    if $<variable> {
        $past := $<variable>.ast;
    } elsif $<literal> {
        $past := $<literal>.ast;
    }

    make $past;
}

method variable($/) {
    if $<pseudo_variable_self> {
        make $<pseudo_variable_self>.ast;
    } elsif $<local_variable> {
        make $<local_variable>.ast;
    }
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

    my $name := $<name>;

    my $variable := PAST::Var.new(:name($name),
                                  :scope<lexical>,
                                  :viviself<Undef>,
                                  :node($/) );

    $variable.isdecl(1);
    my $count := 0;
    for @?BLOCK {
        $count++;
        if $_.symbol( $name) {
            $variable.isdecl(0);
        }
    }

    if $variable.isdecl {
       $?BLOCK.symbol( $name, :scope<lexical>);
    }

    $variable.lvalue(1);

    my $value := $<basic_expression>.ast;
    #TODO: Rethink this ---------------

    my $past := PAST::Stmts.new();

    $past.push( PAST::Op.new( $variable,
                              PAST::Val.new(:returns<Integer>, :value(0)),
                              :pasttype<bind>,
                              :node($/) ) );

    $variable := PAST::Var.new(:name($name),
                                  :scope<lexical>,
                                  :viviself<Undef>,
                                  :node($/) );
    #------8<--------------------------

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

    if $defined {
        make PAST::Var.new( :name($name),
                            :scope<lexical>,
                            :viviself<Undef>,
                            :node($/) );
    } else {
#        $/.CURSOR.panic("Error: local variable " ~$name~ " was not defined yet");
    }

}

method string_constant($/) {
    my $past := $<quote>.ast;
    $past.returns('String');
    make $past;
}

method quote:sym<'>($/) { make $<quote_EXPR>.ast; }
method quote:sym<">($/) { make $<quote_EXPR>.ast; }

