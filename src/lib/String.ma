String 
   message: ',' as: { anString | 
       "Concatenate anString with the reciever and 
        returns the result as a new object"

       ^ <concat(self,anString)> 
   };

   message: 'copyFrom:to:' as: { start end |
        "Copies part parts of the string between start and end"
        ^ <stringCopyFromTo(self,start,end)>.
   }.