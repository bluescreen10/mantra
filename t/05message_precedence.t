class Startup {

    main {
        var1: self keyword: self plan1 + self plan2 
                   keyword1: self plan1 + self testResult.

        self plan1 > 'ok 2 Binary precedence'.
    }

    plan1 {}

    plan2 { 
        ^ '1..2'
    }

    plan3 {
        ^ 'ok 1 Message precedence'.
    }

    + aString {
        ^ aString
    }


    > aString {
        <say(aString)>
    }

    testResult {
       var1: 'ok 1 message return'.
       ^ var1
    }

    keyword: aString keyword1: anotherString {
       self say:aString.
       self say:anotherString.
    }

    say: aString {
      <say(aString)>
    }

}