=begin overview

This is the grammar for mantra in Perl 6 rules.

=end overview

grammar mantra::Grammar is HLL::Grammar;

token TOP {
    <.compiler_init>
    <class_definition>
    [ $ || <.panic: 'Syntax error'> ]
}

token compiler_init {
    <?>
}

## Class grammar definitions

rule class_definition {
    [ 'class' || <.panic: 'Syntax Error'> ]
    <.begin_class>

    <class_name=class_identifier>

    [ '<' <superclass=class_identifier>
        [ ',' <superclass=class_identifier> ]* '>'
    ]?

    <method_definition>*
}

token begin_class {
    <?>
}

## Indentifiers
token class_identifier {
    [ <namespace=identifier> '.' ]* <class_name=identifier>
    || <.panic: 'Invalid namespace or class name'>
}

## General grammars

token identifier {
    <alpha><alnum>*
}

## Method defintion

rule method_definition {
    <begin_method_definition>
    '[' <statement_list> ']'
}

token begin_method_definition {
    | <keyword_method>
    | <binary_method>
    | <unary_method>
}

token keyword_method {
    <method_name=ident> ':' \h* <param=ident> \h+
        [ <method_name=ident> ':' \h* <param=ident> ]*
}

token binary_method {
    <method_name=binary_method_name> \h* <param=ident>
}

token unary_method {
    <method_name=ident>
}

# token private {
#     '<!>'
# }

# # TODO: Improve method argument defition
# token method_argument {
#     <local_variable>
# }

# Statement list
rule statement_list {
     <statement>? ['.' <statement>? ]*
}

# Statement
rule statement {
     <expression>
}

rule return_statement {
     '^' <basic_expression>
}

rule expression {
    | <assignment>
    | <return_statement>
    | <basic_expression>
}

rule basic_expression {
    | <primitive>
    | <message>
    | <primary>
}

rule message {
    <primary>
    [
    | <keyword_first=keyword_message>
    | <binary_first=binary_message>
    | <unary_first=unary_method>+ <binary_second=binary_message>* <keyword_thrid=keyword_message>?
    ]
}

token binary_message {
    <method_name=binary_method_name> \h* <primary>
}

token keyword_message {
    <method_name=ident> ':' \h* <primary>
    [ <method_name=ident> ':' \h* <primary> ]*
}


# token unary_selector {
#    <identifier>
#    {*}
# }

# rule keyword_selector {
#      [ <keyword_method_name> <keyword_argument> ]+
#      {*}
# }

# rule keyword_argument {
#      <primary> [ <unary_selector> ]*
#      {*}
# }

rule primary {
     | <variable>
     | <literal>
}

token variable {
    | <pseudo_variable_self>
    | <local_variable>
}


token assignment {
     <name=ident> ':' \h* <basic_expression>
}

# rule assignment_target {
#     <!reserved_words><variable>
#     {*}
# }


token pseudo_variable_self {
    'self'
}

# token instance_variable_identifier {
#     '@' <indentifier>
#     {*}
# }

# token class_variable_identifier {
#     '@@' <identifier>
#     {*}
# }

token local_variable {
     <name=ident>
}


# # Tokens

# token reserved_words {
#     [ 'true' | 'false' | 'null' | 'self' | 'class' ]
# }

token binary_method_name {
     [ '!' | '%' | '+' | '-' | '/' | '<' | '=' | '>'
     | '?' | '@' | '\\' | '~' | '|' | '*' ]+
}

# token keyword_method_name {
#     <identifier> ':'
# }

token literal {
     <string_constant>
#    | <number_literal>
}

token string_constant { <quote> }

proto token quote { <...> }
token quote:sym<'> { <?[']> <quote_EXPR: ':q'> }
#token quote:sym<"> { <?["]> <quote_EXPR: ':qq'> }

token string_literal {
    [\w|\d|\;]+
}

# token <number_literal> {
#    <absolute_number>
# #   {*}
# }

# token absolute_number {
#    | <absolute_float>   {*} #= absolute_float
#    | <absolute_integer> {*} #= absolute_integer
# }

# token absolute_integer {
#    \d+
#    {*}
# }

# token absolute_float {
#    \d+ '.' \d+
#    {*}
# }

token primitive {
    '{' <identifier=ident> '(' [ <primary> [ ',' <primary> ]*]?  ')'  '}'
}


##  this <ws> rule treats # as "comment to eol"
##  you may want to replace it with something appropriate
token ws {
    <!ww>
    [ '#' \N* \n? | \s+ ]*
}

## Operators

# INIT {
#     mantra::Grammar.O(':prec<u>, :assoc<left>',  '%multiplicative');
#     mantra::Grammar.O(':prec<t>, :assoc<left>',  '%additive');
# }

# #token circumfix:sym<( )> { '(' <.ws> <EXPR> ')' }

# #token infix:sym<*>  { <sym> <O('%multiplicative, :pirop<mul>')> }
# #token infix:sym</>  { <sym> <O('%multiplicative, :pirop<div>')> }

# #token infix:sym<+>  { <sym> <O('%additive, :pirop<add>')> }
# #token infix:sym<->  { <sym> <O('%additive, :pirop<sub>')> }
