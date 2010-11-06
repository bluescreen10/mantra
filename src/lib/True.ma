true
   addMethod: 'ifTrue:'  as: { block | ^ block call };

#   addMethod: 'ifFalse:' as: { block | ^ self }.

    addMethod: 'ifTrue:ifFalse:' as: { trueBlock falseBlock | ^ trueBlock call };

    addMethod: 'ifFalse:ifTrue:' as: { falseBlock trueBlock | ^ trueBlock call };
    
    addMethod: 'not' as: { ^ false }.