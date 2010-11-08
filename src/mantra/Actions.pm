class mantra::Actions is HLL::Actions;

our @?BLOCK;
our $?BLOCK;

INIT {
    our @?BLOCK := Q:PIR { %r = root_new ['parrot';'ResizablePMCArray'] };
    our $?BLOCK := PAST::Block.new( :hll<mantra>, :blocktype<declaration> );

    @?BLOCK.push($?BLOCK);
}

# Called at the beginning of the parsing usefull to wrap up everything
method begin($/) {
    our $?BLOCK;
    our @?BLOCK;

    $?BLOCK := PAST::Block.new(:hll<mantra>, :blocktype<declaration>);


    Q:PIR {   $P0 = get_hll_global 'Object'
              unless null $P0 goto already_loaded
              setup_protoobject()
              load('System')
            already_loaded:
          };

    # $?BLOCK.loadinit.unshift(
    #     PAST::Op.new(
    #         :pasttype<inline>,
    #         :inline('   $P0 = get_hll_global "Object" ',
    #                 '   unless null $P0 goto finish_setup',
    #                 ' finish_setup:')
    #     )
    # );

    # Built-in Globals
    $?BLOCK.symbol( 'Object', :scope<package>);
    $?BLOCK.symbol( 'String', :scope<package>);
    $?BLOCK.symbol( 'true',   :scope<package>);
    $?BLOCK.symbol( 'false',  :scope<package>);

    # Register TOP level block
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

    for $<expr> {
        $past.push($_.ast);
    }

    make $past;
}

method return_expr($/) {
    make PAST::Op.new(
        :pasttype<inline>,
        :inline(
            'store_lex ":return_value", %0',
            '$P0 = find_lex ":return_address"',
            '.tailcall $P0()'
        ),
        $<basic_expr>.ast
    );
}

# Expressions

method expr($/) {
    # Generates the AST for the expression
    if $<bind_expr> {
        make $<bind_expr>.ast;
    }
    elsif $<return_expr> {
        make $<return_expr>.ast;
    }
    elsif $<basic_expr> {
        make $<basic_expr>.ast;
    }
}

method basic_expr($/) {
    # Generate the AST for primitive, primary, message send
    our @MESSAGE_TARGET;

    if $<primitive> {
        make $<primitive>.ast;
    }
    else {
        # We need to remove the first primary from the MESSAGE_TARGET list
        my $past := @MESSAGE_TARGET.shift();

        if $<message> {
            $past := PAST::Stmts.new();

            # Chained messages
            for $<message> {
                $past.push($_.ast);
            }

            make $past;
        }

        make $past;
    }
}

# /Expressions

# Message

method message_target($/) {
    # We need to store the <primary> because in chained messages the target
    # node ends up burried in the AST
    our @MESSAGE_TARGET;
    @MESSAGE_TARGET.unshift($<primary>.ast);
}

# /Message

# Unary

method build_unary_msg( $reciever, $selector, $node ) {
    # Builds the AST of an unary msg call
    my $past := PAST::Op.new(
        :pasttype<callmethod>,
        :name<send_message>,
        :node($node)
    );

    $past.push($reciever);
    $past.push( PAST::Val.new( :returns<String>, :value($selector) ) );

    return $past;
}

method message:sym<unary>($/) {
    # Generate the AST for unary expressions
    our @MESSAGE_TARGET;

    # First message
    my $past := self.build_unary_msg(
        @MESSAGE_TARGET[0],   # Reciever
        $<unary_msg>.shift(), # Selector
        $/                    # Node
    );

    # Chained unary messages
    for $<unary_msg> {
        my $chained := self.build_unary_msg( $past, $_, $/);
        $past := $chained;
    }

    # Chained binary messages
    for $<binary_msg> {
        my $chained := self.build_binary_msg(
            $past,              # Reciever
            $_<binary_sel>,     # Selector
            $_<binary_arg>.ast, # Argument
            $/                  # Node
        );

        $past := $chained;
    }

    # Chained keyword message
    for $<keyword_msg> {
        my $chained := self.build_keyword_msg(
            $past,
            pir::join('',$_<keyword_sel>),
            $_<keyword_arg>,
            $/
        );

        $past := $chained;
    }


    make $past;
}

# /Unary

# Binary
method build_binary_msg( $reciever, $selector, $argument, $node ){
    # Builds the AST of an binary msg call
    my $past := PAST::Op.new(
        :pasttype<callmethod>,
        :name<send_message>,
        :node($node)
    );

    $past.push($reciever);
    $past.push( PAST::Val.new( :returns<String>, :value($selector) ) );
    $past.push($argument);

    return $past;
}

method message:sym<binary>($/) {
    # Generate AST for binary expressions
    our @MESSAGE_TARGET;

    # First message
    my $msg := $<binary_msg>.shift();

    my $past := self.build_binary_msg(
        @MESSAGE_TARGET[0],   # Reciever
        $msg<binary_sel>,     # Selector
        $msg<binary_arg>.ast, # Argument
        $/                    # Node
    );

    # Chained binary messages
    for $<binary_msg> {
        my $chained := self.build_binary_msg(
            $past,              # Reciever
            $_<binary_sel>,     # Selector
            $_<binary_arg>.ast, # Argument
            $/                  # Node
        );

        $past := $chained;
    }

    # Chained keyword message
    for $<keyword_msg> {
        my $chained := self.build_keyword_msg(
            $past,
            pir::join('',$_<keyword_sel>),
            $_<keyword_arg>,
            $/
        );

        $past := $chained;
    }

    make $past;
}

method binary_arg($/) {
    # Generates the AST for binary arg

    # TODO: Handle chained msg;
    make $<primary>.ast;
}

# /Binary

# Keyword
method build_keyword_msg( $reciever, $selector, $arguments, $node ) {
    # Generate the AST for keyword messages

    my $past := PAST::Op.new(
        :pasttype<callmethod>,
        :name<send_message>,
        :node($node)
    );

    $past.push($reciever);
    $past.push( PAST::Val.new( :returns<String>, :value($selector) ) );

    for $arguments {
        $past.push($_.ast);
    }

    return $past;
}

method message:sym<keyword>($/) {
    # Generate the AST for keyword expressions
    our @MESSAGE_TARGET;

    # Message tokens
    my $msg := $<keyword_msg>;

    # Message call
    my $past := self.build_keyword_msg(
        @MESSAGE_TARGET[0],                # Reciever
        pir::join('', $msg<keyword_sel> ), # Selector
        $msg<keyword_arg>,                 # Arguments
        $/                                 # Node
    );

    make $past;
}

method keyword_arg($/) {
    # Generate the AST for keyword argument

    # TODO: Chained message to the primary
    make $<primary>.ast;

}

# Primary
method primary($/) {
    our @?BLOCK;
    our $?BLOCK;

    if $<variable> {
        my $past := $<variable>.ast;

        unless $past.scope() {
            for @?BLOCK {
                my $variable := $_.symbol( $<variable> );
                if $variable {
                    $past.scope($variable<scope>);
                }
            }
        }
        make $past;
    }
    elsif $<literal> {
        make $<literal>.ast;
    }
    elsif $<basic_expr> {
        make $<basic_expr>.ast
    }
    elsif $<block> {
        make $<block>.ast;
    }
}

method variable($/) {
    if $<pseudo_variable_self> {
        make $<pseudo_variable_self>.ast;
    }
    elsif $<instance_variable> {
        make $<instance_variable>.ast;
    }
    elsif $<lexical_variable> {
        make $<lexical_variable>.ast;
    }
}

method instance_variable ($/) {
    make PAST::Var.new( :name(~$<ident>), :scope<attribute>, :node($/) );
}

method pseudo_variable_self($/) {
    make PAST::Var.new( :name<self>, :scope<lexical> );
}


method literal($/) {
    my $past;

    if $<string_constant> {
        $past := PAST::Op.new(
            :name('copy_set_value'),
            :pasttype('callmethod'),
            :node($/)
        );

        $past.push(PAST::Var.new( :name<String>, :scope<package> ));
        $past.push($<string_constant>.ast);
    }
    elsif $<literal_number> {
        $past := $<literal_number>.ast;
    }

    make $past;
}

method primitive($/) {
    make $<primitive_contents>.ast;
}

method primitive_contents($/) {
    my $past := PAST::Op.new(
        :name( $<primitive_name> )
    );

    for $<primary> {
        $past.push( $_.ast );
    }

    make $past;
}

method is_global($variable) {
    our @?BLOCK;
    our $?BLOCK;

    # Currently at global scope
    if @?BLOCK[1] eq $?BLOCK {
        return 1;
    }

    for @?BLOCK {
        my $hash := $_.symbol( $variable.name() );
        if $_.symbol( $variable.name() &&
           $_.symbol( $variable.name() ) eq "package" ) {
            return 1;
        }
    }

    return 0;
}

method is_registered($variable) {
    our @?BLOCK;

    # Search through lexical vars
    for @?BLOCK {
        if $_.symbol($variable.name()) {
            return 1;
        }
    }

    return 0;
}

method bind_expr($/) {
    our @?BLOCK;
    our $?BLOCK;
    my $variable := $<bind_target>.ast;
    # Dynamic Scope
    unless $variable.scope() {
        # Global or lexicals
        if self.is_global($variable) {
            $variable.scope('package');

            # Register Global Variable
            unless self.is_registered( $variable ) {
                $variable.isdecl(1);
                @?BLOCK[0].symbol( $variable.name, :scope<package> );
            }
        }
        else {
            $variable.scope('lexical');
            unless self.is_registered( $variable ) {
                $variable.isdecl(1);
                $?BLOCK.symbol( $variable.name(), :scope<lexical>);
            }
        }
    }

    $variable.lvalue(1);

    my $past :=  PAST::Op.new(
        :pasttype<bind>,
        :node($/)
    );

    $past.push( $variable );
    $past.push( $<basic_expr>.ast );

    make $past;
}

method bind_target($/) {
    make $<variable>.ast;
}

method lexical_variable($/) {
    make PAST::Var.new( :name($<name>), :node($/) );
}


# Block

method begin_block($/) {
    our $?BLOCK;
    our @?BLOCK;

    $?BLOCK := PAST::Block.new(:blocktype<declaration>);
    @?BLOCK.push($?BLOCK);

}

method block($/) {
    our $?BLOCK;
    our @?BLOCK;

    my $contents := @?BLOCK.pop();

    $?BLOCK := @?BLOCK[-1];

    my $past := PAST::Op.new(
        :name('copy_set_value'),
        :pasttype('callmethod'),
        :node($/)
    );

    $past.push(PAST::Var.new( :name<Block>, :scope<package> ));
    $past.push($contents);
    make $past;
}

method block_contents($/) {
    our $?BLOCK;
    our @?BLOCK;

    for $<ident> {
        $?BLOCK.push( PAST::Var.new( :name($_), :scope<parameter> ) );
        $?BLOCK.symbol($_, :scope('lexical'));
    }

    $?BLOCK.push($<statement_list>.ast);
    make $?BLOCK;
}

# /Block

method string_constant($/) {
    my $past := $<quote>.ast;
    $past.returns('String');
    make $past;
}

method quote:sym<'>($/) { make $<quote_EXPR>.ast; }
method quote:sym<">($/) { make $<quote_EXPR>.ast; }


# Literal Number
method literal_number($/) {
    if $<integer> {
        make $<integer>.ast;
    }
}

# Integer
method integer($/) {
    my $past := PAST::Op.new(
         :name('copy_set_value'),
         :pasttype('callmethod'),
         :node($/)
    );

    # Internal Integer type
    $past.push(
        PAST::Var.new( :name<Integer>, :scope<package> )
    );

    # Parrot's built-in integer
    $past.push(
        PAST::Val.new( :returns<Integer>, :value($/) )
    );

    make $past;
}
