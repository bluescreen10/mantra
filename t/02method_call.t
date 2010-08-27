class Startup {

    main {
       <say('1..4')>.
       self firstTest.
       self + 'ok 2 Binary method'.
       self thirdTest: 'ok 3 Keyword method' 
                  and: 'ok 4 Keyword method #2'.
   }

   firstTest {
        <say('ok 1 Unary method')>
   }

   + aString {
        <say(aString)>
   }

   thirdTest: aString and: anotherString {
        <say(aString)>. 
        <say(anotherString)>
   }

}