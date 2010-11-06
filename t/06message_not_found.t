# "MyObject"
MyObject: Object new.

MyObject 
    addMethod: 'methodNotFound:' as: { methodName |
       # "Override methodNotFound"
       System out: 'ok ', 
                   (@count asString) ,
                   ' method:"',
                   methodName, 
                   '" not found exception'.
       @count: @count + 1.
    };

    addMethod: 'initialize' as: {
       # "initialize vars"
       @count: 0.
    }.


# "Test plan"
System out: '1..3'.

# Call an unexistent methods
#Unary
MyObject invalidUnaryMethod. 

# Binary
MyObject + 1.

# Keyword
MyObject invaliKeywordMethod: 1.
