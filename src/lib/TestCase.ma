TestCase: Object new.

TestCase 

addMethod: 'run' as: {
    methodNames: self testCases.
    self informPlan: methodNames size.

    methodNames do: { e |
        self setup;
             execute: e.
    }
};
         
addMethod: 'informPlan:' as: { numberOfTests |
    System out: '1..', numberOfTests asString.
};

addMethod: 'setup' as: {};

addMethod: 'assertTrue:' as: { block |
    
}