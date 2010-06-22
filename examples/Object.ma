class Mantra.Core.Object : < Parrot.Object, Parrot.Class >

   new [
     # Returns a new instance of the Object class, this is 
      the very primitive form to instantiate objects
      ^ {createObject: self} initialize #
   ]

   <!> initialize [
     # To be overwritten by subclasses this method, is 
     # handy to put instance's initialization code
   ]


   memoryAddress [
     # Returns the memory address of the instance
     ^ {NEW(self)}
   ]

   printOn: aStream [
     # By default all objects print their class name and
     # memory address
     aStream putAll: class name, '(', self memoryAddress , ')'
   ]

   <!> + anotherElement [
       result: self value.
       ^ anotherElement + result
       [ for: each | Transcript show: (@A: @A++) ] value: 123 
   ]
