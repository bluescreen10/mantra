" Boolean true"
true
   message: 'ifTrue:'  as: { block | ^ block call };

   message: 'ifFalse:' as: { block |  };

   message: 'ifTrue:ifFalse:' as: { trueBlock falseBlock | ^ trueBlock call };

   message: 'ifFalse:ifTrue:' as: { falseBlock trueBlock | ^ trueBlock call };
    
   message: 'not' as: { ^ false }.