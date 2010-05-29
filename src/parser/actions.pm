# $Id$

class mantra::Grammar::Actions;

method TOP($/) {
    my $past := PAST::Block.new( :blocktype('declaration'), :node( $/ ) );
    $past.push($($<class_definition>));

    # Program start
    #$past.push(PAST::Op.new( :inline('$P0 = get_class \'Startup\''), :node($/) ));
    #$past.push(PAST::Op.new( :inline('$P1 = $P0.\'find_method\'(\'main\')' ), :node($/) ));
    #$past.push(PAST::Op.new( :inline('$P0.$P1()'), :node($/) ));
    $past.push(PAST::Op.new( :inline('$P0 = new "Startup"'), :node($/) ));
    $past.push(PAST::Op.new( :inline('$P0."main"()' ), :node($/) ));

    make $past;
}

method class_identifier($/) {
    make PAST::Val.new( :returns('String'), :value($/), :node($/));
}

method class_definition($/) {

    my $past := PAST::Stmts.new();
    # Create the class defintion
    my $create_class := PAST::Op.new(:name('!create_class'));

    # Class name
    $create_class.push($( $<class_identifier> ) );

    # Super classes
    for $<superclass> {
        $create_class.push($($_));
    }
    $past.push($create_class);

    # Methods
    for $<method_definition> {
        my $method := $($_);
        $method.namespace( $<class_identifier> );
        $past.unshift($method);
    }

    make $past;
}

method identifier($/) {
    make PAST::Var.new( :name('self'), :scope('register'));
}

method literal($/) {
    make PAST::Val.new( :value( $($<string_literal>) ), :returns('String'), :node($/) );
}

method literal_or_identifier($/,$key) {
    make $( $/{$key} );
}

method method_definition($/) {
    my $past := $( $<message_type> );
    #for $<statement_list> {
    #    $past.push( $_ );
    #}
    $past.push($( $<statement_list> ));
    make $past;
}

# This creates the method header
method message_type($/, $key) {
    make $( $/{$key} );
}
method unary_message($/) {
    my $past := PAST::Block.new( :blocktype('declaration'), :node($/) );
    $past.pirflags(':method');
    $past.name($<non_capitalized_word>);
    make $past;
}

method binary_message($/) {
    my $past := PAST::Block.new( :blocktype('declaration'), :node($/) );
    $past.pirflags(':method');
    $past.name($<binary_method_name>);

    # Argument
    $past.push( PAST::Var.new( :scope('parameter'), :name($<method_argument>)));

    make $past;
}

method keyword_message($/) {
    my $past := PAST::Block.new( :blocktype('declaration'), :node($/) );
    $past.pirflags(':method');
    # Name
    my $name := '';
    for $<keyword_method_name> {
        $name := $name ~ $_;
    }
    $past.name($name);

    #Arguments
    for $<method_argument> {
        $past.push( PAST::Var.new( :scope('parameter'), :name($_)));
    }

    make $past;
}

method primitive($/) {
    my $past := PAST::Op.new( :pasttype('call'), :node($/) );
    $past.name($<non_capitalized_word>);
    for $<primary> {
       $past.push($($_));
    }
    make $past;
}

# Statement list
method statement_list($/) {
    my $past := PAST::Stmts.new( :node($/) );
    for $<statement> {
        $past.push( $($_) );
    }
    make $past;
}


# Statement
method statement($/, $key) {
    my $past := $( $/{$key} );
    make $past;
}

method primary($/, $key) {
    make $( $/{$key} );
}

method class_variable_identifier($/) {
    make ( PAST::Var.new( :scope('package'),
                          :name( $<capitalized_word> ),
                          :node($/)));

}


method instance_variable_identifier($/) {
    my $past := PAST::Var.new( :scope('attribute'),
                               :name( $<non_capitalized_word> ),
                               :node($/));

    $past.push(PAST::Var.new( :name('self'), :scope('register')));
    make $past;
}

method local_variable($/) {
    my $past := PAST::Var.new(
                         :name( $<non_capitalized_word> ),
                         :node($/));
    $past.isdecl(1);
    $past.scope('lexical');
    make $past;

}

method pseudo_variable_self($/) {
    my $past := PAST::Var.new( :name('self'), :scope('register'));
    make $past;

}

method assignment($/) {
    my $value := $( $<basic_expression> );
    my $variable := $( $<assignment_target> );
    $variable.lvalue(1);
    my $past := PAST::Op.new($variable, $value, :pasttype('bind'), :node($/));
    make $past;
}

method variable($/,$key) {
    make $( $/{$key} );
}

method return_statement($/) {
    my $past := PAST::Op.new( :pasttype('pirop'), :pirop('return') );
    $past.push( $( $<basic_expression> ));
    make $past;
}

method expression($/, $key) {
    make $( $/{$key} );
}

method assignment_target($/) {
    make $( $<variable> );
}

method literal($/,$key) {
    my $past;

    if $key eq 'string' {
        $past := PAST::Val.new(:returns('String'),
                               :value($<string_literal>),
                               :node($/));
    }
    elsif $key eq 'number' {
        $past := $( $<number_literal> );
    }


    make $past;
}

method absolute_integer($/) {
    make (PAST::Val.new(:returns('Integer')));
}

method absolute_float($/) {
    make (PAST::Val.new(:returns('Float')));
}

method absolute_number($/,$key) {
    make $( $/{$key} );
}

method number_literal($/) {
    #make (PAST::Val.new(:returns('Float')));
    my $past := $( $<absolute_number> );
    $past.value($/);
    $past.node($/);
    make $past;
}

method basic_expression($/, $key) {
    my $past;
    my $reciever := $( $<primary> );

    if $key eq 'unary' {
        # TODO: handle multiple messages to same object
        for $<unary_selector> {
            if $past {
                $( $_ ).unshift($past);
                $past := $( $_ );
            } else {
                $past := $( $_ );
                $past.unshift($reciever);
            }
        }
    }
    elsif $key eq 'keyword' {
        $past := $( $<keyword_selector> );
        $past.unshift($reciever);
    } else {
        $past := $( $<primary> );
    }

    make $past;
}

method unary_selector($/) {
    my $past := PAST::Op.new(:name('!call_method'));
    $past.push(PAST::Val.new(:returns('String'),
                             :value($<non_capitalized_word>),
                             :node($/)));
    make $past;
}

method keyword_selector($/) {
    my $past := PAST::Op.new(:name('!call_method'), :pasttype('call') );
    my $name := '';
    for $<keyword_method_name> {
        $name := $name ~ $_;
    }
    $past.push(PAST::Val.new(:returns('String'),
                             :value($name),
                             :node($/)));
    for $<keyword_argument> {
        $past.push( $( $_ ) );
    }
    make $past;
}

# Keyword argument
method keyword_argument($/) {
    #my $past := $( $<primary> );
    my $past;
    if $<unary_selector> {
        for $<unary_selector> {
            $past := $( $_ );
        }
        $past.unshift( $( $<primary> ));
    } else {
        $past := $( $<primary> );
    }
    make $past;
}

method message($/, $key) {
    if $key eq 'unary' {
        my $past;
        for $<unary_selector> {
            if $past {
              $( $_ ).unshift($past);
            }
            $past := $( $_ );
        }
        make $past;
    } else {
        make $( $<keyword_selector> );
    }
}
