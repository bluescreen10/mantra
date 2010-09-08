class Object {
   call: aMethodName with: firstArgument {
       <call_method(self,aMethodName,firstArgument)>
   }
}

class Console {

   say: aString {
        <say(aString)>
   }
}

class Test {

      plan {
          ^ '1..1'
      }
}

class Startup is Console, Test {

    main {
        self call: 'say:' with: self plan.
        self call: 'say:' with: 'ok 1 Object method call'.
    }
}