<class definition> ::=
        'class' <class identifier> [ '<' <superclass name> [ ',' <superclass name> ]* '>' ]?
            <method defintion>* 

<superclass name> ::= <class indentifier>

<method definition> ::=
        <message type> '['
                 <statement_list>
        ']'
         
<message type>       ::= <access type>? [ <unary type> | <binary type> | <keyword type> ]
<access type>        ::= '<!>'
<unary type>         ::= <unary method name>
<binary type>        ::= <binary method name> <method argument>
<keyword type>       ::= [<keyword name> <method argument>]+
<unary method name>  ::= <non capitalized word>
<binary method name> ::= <binary character>+
<binary character>   ::= [ '!' | '%' | '&' | '+' | '-' | '/' | '<' | '=' | '>' | '?' | '@' | '\' | '~' | '|' | '*' ]
<keyword name>       ::= <non capitalized word> ':'
<statement_list>   ::= <statement>? ['.' [<statement>]? ]*
<statement>        ::= <return expression> | <expression>
<expression>       ::= [ <assignment> | <basic epxression> | <primitive> ]
<primitive>        ::= '{' <identifier>'('[<argument=identifier>]*')' '}'
<assigment>        ::= <assignment target> ':' <basic expression>
<assignment target> ::= <!reserved words><variable>
<basic expression> ::= <primary> [ <message> [ ';' <message> ]* ]?
<primary>          ::= <identifier> | <literal> | <block> | '(' <basic expression> ')'
<literal>          ::= <number literal> | <string literal> | <array literal>
<number literal>   ::= [ '-' ]? <absolute number>
<absolute number>  ::= <integer> | <float>
<string> literal>  ::= '\'' <string constant> '\''
<array literal>    ::= '<' <array element>* '>'
<array element>    ::= <literal> | <identifier>
<return expression> ::= '^' <expression>
<reserved words>   ::= 'true' | 'false' | 'null' | 'self' | 'class'
<variable>         ::= <instance variable identifier> | <class variable identifier> | <local variable>
Messages
message ::= <unary message>+ <binary message>* [<keyword message>]? |
            <binary message>+ [ <keyword message>]? |
            <keywork message>
<unary message>    ::= <unary method name>
<binary message>   ::= <binary method name> <binary argument>
<binary argument>  ::= <primary> <unary message>*
<keyword message>  ::= [<keyword name> <keyword argument>]+
<keyword argument> ::= <primary> <unary message>* <binary message>*


Numbers
<integer>  ::= <digit>+
<float>    ::= <mantissa> [ 'e' <exponent> ]?
<mantissa> ::= <digit>+ '.' <digit>+
<exponent> ::= [ '-' ]? <digits>+

Blocks
<block>      ::= '[' <block body> ']'
<block body> ::= [[[<keyword name>]? <identifier>]* '|' ]? <statement_list>

Indetifier
<indentifier> ::= <reserved words> | <class identifier> | <instance variable identifier> | <class variable identifier> | <local variable>
<class identifier> ::= <namespace><class name>
<namespace> ::= [<capitalized word> '.' ]*
<clas name> ::= <capitalized word>
<capitalized word> ::= <uppercased leter> [ <letter> | <digit> ]*
<non capitalized word> ::= <lowercassed letter> [ <letter> | <digit> ]*
<instance variable identifier> ::= '@' <non capitalized word>
<class variable identifier> ::= '@' <capitalized word>
