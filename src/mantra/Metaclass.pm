class mantra::Metaclass;

our %LOADED;

method create_class($classname, @parents, %attributes) {
    our %LOADED;
    %LOADED{$classname} := 1;

    if +@parents == 0 && $classname ne 'Object' {
        @parents.push('Object');
    }

    my $new_class  := Q:PIR {
         $P0 = find_lex '$classname'
         %r = newclass [$P0]
    };

    for %attributes {
        Q:PIR {
              $P0 = find_lex '$new_class'
              $P1 = get_class $P0
              $P2 = find_lex '$_'
              $P1.'add_attribute'($P2)
        };
    }

    for @parents {
        unless %LOADED{$_} {
            %LOADED{$_} := 1;
            mantra::Loader.import($_);
        }
        Q:PIR {
              $P0 = find_lex '$_'
              $P1 = get_class $P0
              $P2 = find_lex '$new_class'
              $P3 = get_class $P2
              addparent $P3, $P1
        };
    }
}
