String 
   addMethod: ',' as: { anString | 
       # Concatenate anString with the reciever
       # and returns the result as a new object

       ^ <concat(self,anString)> 
   };

    addMethod: 'copyFrom:to:' as: { start end |

        ^ <stringCopyFromTo(self,start,end)>.
    }.