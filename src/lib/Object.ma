Object 
   message: 'printMemoryAddress' as: {
      address: <getaddress(self)>.
      System out: address
   };

   message: '==' as: { anObject | 
      ^ <sameobject(self,anObject)>
   };

   message: '=' as: { anObject |
      ^ self == anObject
   };

   message: 'type' as: {
      ^ 'Object'
   };

   message: 'ifNull:' as: { aBlock | 
      "does nothing"
   };

   message: 'ifNotNull:' as: { aBlock | 
      "sends call message to aBlock and returns the results"
      ^ aBlock call 
   };

   message: 'isNull' as: {
      "Any object with the exception of null must return false to this message"
      ^ false.
   };

   message: 'isNotNull' as: {
      "Any object with the exception of null must return true to this message"
      ^ true.
   }

