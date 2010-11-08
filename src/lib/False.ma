false
    message: 'ifFalse:'  as: { block | ^ block call };

    message: 'ifTrue:' as: { block | };

    message: 'ifTrue:ifFalse:' as: { trueBlock falseBlock | 
       ^ falseBlock call 
    };

    message: 'ifFalse:ifTrue:' as: { falseBlock trueBlock | 
       ^ falseBlock call
    };

    message: 'not' as: { ^ true }.