false
    addMethod: 'ifFalse:'  as: { block | ^ block call };

#    addMethod: 'ifTrue:' as: { block | ^ self }.

    addMethod: 'ifTrue:ifFalse:' as: { trueBlock falseBlock | 
       ^ falseBlock call 
    };

    addMethod: 'ifFalse:ifTrue:' as: { falseBlock trueBlock | 
       ^ falseBlock call
    };

    addMethod: 'not' as: { ^ true }.