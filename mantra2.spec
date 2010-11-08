@namespace: 'Core'.

Startup: Core.Object new.

Startup 
   addParents: [ TestCase, Teton ];
    
   message: 'new' as: {
       @a: 23.
       instace: AnotherInstace new.
       instace call: 23 
               with: 22.
       ^ return something
   };

   addMessage: 'new:with:' as: { aString anotherString |
       ^ ( self parents at: 2 ) new  
                  name : aString;
                  title: anotherString.
   };

   addMessage: #addParents: argument: 'parents' {
       parents do: { parent | self addParent: parent }
   }.


#######################################3
Startup: object new.

Startup 
   atMethod: 'queVuelvaCarlos:' put: { param1 param2 |
       aCollection do: { e | 
           System out: e asString.
           param1: 'Scope override'
       }
   };

   atMethod: 'toStringWith:' put: { aParam |
       a 
   }.
