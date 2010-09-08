class Parent {

    testResult {
       self say: @string
    }
}

class Startup is Parent  {

    main {
       @plan: '1..2'.
       self plan.
       @string: 'ok 1 access @string variable'.
       self testResult.
       @string: 'ok 2 access @string variable'.
       self testResult.
   }

    plan {
       self say: @plan
    }

    say: aString {
       <say(aString)>
    }

}