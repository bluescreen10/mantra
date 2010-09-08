class Object {

      new {
          ^ <basic_new(self)>
      }     

      call: aMethodName with: firstArgument {
          <call_method(self,aMethodName,firstArgument)>                  
      }

}