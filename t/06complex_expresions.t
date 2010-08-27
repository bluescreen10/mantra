class Startup {

    main {
        # this is a comment
        plan: ( self returnSelf ? '1..2' ).
        self say: plan.

        self firstResult:  ( self echo: 'ok 1 Sub-expression using Keywords' )
             secondResult: self returnSelf ? ( self returnSelf echo: 'ok 2 Complex Sub-expression') .

    }

    echo: aString {
        ^ aString
    }

    ? aString {
        ^ aString
    }

    returnSelf {}

    firstResult: aString secondResult: anotherString {
        self say: aString.
        self say: anotherString.
    }

    say: aString {
       <say(aString)>
    }

}