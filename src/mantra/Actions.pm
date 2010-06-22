class mantra::Actions is HLL::Actions;

INIT {
    our @?BLOCK;
    # Create the parent block
    @?BLOCK.unshift(PAST::Block.new(:hll<mantra>));
}

method TOP($/) {
    our @?BLOCK;

    # Get the parent block
    my $block := @?BLOCK.shift();
    $block.push($<class_definition>.ast);

    # Startup Code
    $block.push( PAST::Op.new( :inline('$P0 = new "Startup"'), :node($/) ));
    $block.push(PAST::Op.new( :inline<$P0."main"()>, :node($/) ));
    make $block;
}

method class_definition($/) {
    say("something");
    my $past := PAST::Stmts.new();

    # Create the class defintion
    # Primitive
    my $create_class := PAST::Op.new(:name('!create_class'));

    # # Class name
    $create_class.push($<class_name>.ast);

    # Super classes
    for $<superclass> {
        $create_class.push($($_));
    }

    # Methods
    for $<method_definition> {
         my $method := $($_);
         $method.namespace( $<class_identifier> );
         $past.unshift($method);
    }

    make $past;
}


method class_identifier($/) {
    say("ident: "~$/);
    make PAST::Val.new( :returns<String>, :value($/), :node($/));
}
