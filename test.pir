.sub "main"  :main
     $P15 = newclass "Foo"
     $P0 =  get_class "Foo"
     $P2 = $P0.'find_method'('hello')a  
     $P0.$P2()
.end
 
 
.namespace ['Foo']

.sub hello :method
    say "HI"
.end
