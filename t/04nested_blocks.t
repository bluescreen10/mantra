Test: Object new.
Test 
    addMethod: 'say:' as: { aString | System out: aString };
    addMethod: 'call' as: {
       a: '1..1'.
       block: {
            self say: a.
            ^ self.
       }.
       block call.
       self say: 'not ok 1 Should not get here'
    };
    call;
    say: 'ok 1 nested blocks'.
