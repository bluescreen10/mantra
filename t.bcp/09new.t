class Startup {

      main {
           newInstance: Startup new.
           newInstance plan: '1..1'.
           @plan: 'bad_plan'.
           newInstance sayPlan.
           newInstance firstTest
      }

      plan: aString {
         @plan: aString.
      }

      firstTest {
         self say: 'ok 1 Created a new instance'
      }

      sayPlan {
         self say: @plan
      }
      
      say: aString {
           <say(aString)>
      }

}