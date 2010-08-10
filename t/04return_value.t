class Startup

main [
     var1: self plan.
     {say(var1)}.
     var2: self returnSelf.
     var1: var2 firstTest.
     {say(var1)}.
]

plan [ 
    ^ '1..1'
]

firstTest [
    var1: 'ok 1 message return'.
    ^ var1.
]

returnSelf [
]

