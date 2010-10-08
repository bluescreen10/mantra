Object 
  addMethod: 'printMemoryAddress' as: {
    address: <getaddress(self)>.
    System out: address
  };

  addMethod: '==' as: { anObject | 
      ^ <sameobject(self,anObject)>
  }; 

  addMethod: '=' as: { anObject |
      ^ self == anObject
  }.

