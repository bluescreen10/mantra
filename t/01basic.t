Startup: Object new.

Startup 
    addMethod: 'void'    as: { };
    addMethod: 'plan'    as: { System out: '1..1' };
    addMethod: 'results' as: { System out: 'ok 1 Basic test' };
    plan;
    results.

