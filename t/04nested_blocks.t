Test: Object new.

Test 
   message: 'say:' as: { anString | System out: anString };
  
   message: 'call' as: {
      plan: '1..1'.
      block: {
         System out: plan.
            ^ self.
      }.
      block call.
      System out: 'not ok 1 Should not get here'
   }.

Test
   call;
   say: 'ok 1 nested blocks'.
