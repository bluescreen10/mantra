class Startup

main [
    var1: self.       
    var1 plan.

    var1 firstTest.
    var2: var1.

    var2 secondTest.    
    var1: 'ok 4 fourthTest'.
    self fourthTest: var1.

]

plan [ 
    {say('1..4')}
]

firstTest [
    {say('ok 1 firstTest')}
]

secondTest [
    {say('ok 2 secondTest')}.
    var1: self.
    var1 thirdTest.
]

thirdTest [
   {say('ok 3 thirdTest')}
]

fourthTest: aString [
   {say(aString)}
]