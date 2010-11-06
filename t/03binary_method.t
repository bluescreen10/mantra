Test: Object new.

Test addMethod: '+' as: { aString | System out: aString };
     + '1..2';
     + 'ok 1 binary method'.

Test addMethod: 'call' as: { self + 'ok 2 using self' };
     call.