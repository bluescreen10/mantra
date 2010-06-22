=begin overview

This is the grammar for mantra in Perl 6 rules.

=end overview

grammar mantra::Grammar is HLL::Grammar;

token TOP {
    <class_definition>
    [ $ || <.panic: 'Syntax error'> ]
}

## Class grammar definitions

rule class_definition {
    [ 'class' || <.panic: 'Syntax Error'> ]

    <class_name=class_identifier>

    [ '<' <superclass=class_identifier>
        [ ',' <superclass=class_identifier> ]* '>'
    ]?

   <method_definition>*
}

## Indentifiers
token class_identifier {
    [ <namespace=identifier> '.' ]* <class_name=identifier>
    || <.panic: 'Invalid namespace or class name'>
}

## General grammars

token identifier {
    \w [ \w | \d ]* 
}

## Method defintion

rule method_definition {
   <message_type> '['
       <statement_list>
   ']'
   {*}
}

token message_type {
    <private>?
    [
      | <keyword_message> {*} #= keyword_message
      | <binary_message>  {*} #= binary_message
      | <unary_message>   {*} #= unary_message
    ]
}

token private {
    '<!>'
}

token unary_message {
   <identifier>
   {*}
}

rule binary_message {
   <binary_method_name> <method_argument>
   {*}
}

rule keyword_message {
   [ <keyword_method_name> <method_argument> ]+
   {*}
}

# TODO: Improve method argument defition
token method_argument {
    <local_variable>
}

# Statement list
rule statement_list {
    <statement>? ['.' <statement>? ]*
    {*}
}

# Statement
rule statement {
    | <return_statement> {*} #= return_statement
    | <expression>       {*} #= expression
}

rule expression {
    | <assignment>       {*} #= assignment
    | <basic_expression> {*} #= basic_expression
    | <primitive>        {*} #= primitive
}

rule basic_expression {
    <primary> 
      [ 
       | <keyword_selector>    {*} #= keyword
       | [ <unary_selector> ]+ {*} #= unary
       ||                      {*} #= no_message
      ]
}

rule message {
    | <keyword_selector> {*} #= keyword
    | [ <unary_selector> ]+  {*} #= unary
}

token unary_selector {
   <identifier>
   {*}
}

rule keyword_selector {
     [ <keyword_method_name> <keyword_argument> ]+
     {*}
}

rule keyword_argument {
     <primary> [ <unary_selector> ]*
     {*}
}

rule primary {
    | <variable>   {*} #= variable
    | <literal>    {*} #= literal
}

rule assignment {
    <assignment_target> ':' <basic_expression>
    {*}
}

rule assignment_target {
    <!reserved_words><variable>
    {*}
}

token variable {
    | <pseudo_variable_self>         {*} #= pseudo_variable_self
    | <instance_variable_identifier> {*} #= instance_variable_identifier
    | <class_variable_identifier>    {*} #= class_variable_identifier
    | <local_variable>               {*} #= local_variable
}

token pseudo_variable_self {
    'self'
    {*}
}

token instance_variable_identifier {
    '@' <indentifier>
    {*}
}

token class_variable_identifier {
    '@@' <identifier>
    {*}
}

token local_variable {
    <identifier>
    {*}
}

rule return_statement {
    '^' <basic_expression>
    # TODO: Match up to block end or '.' and throw
    # the following error
    #<.panic: "Invalid expression as return type">
    {*}
}

# Tokens

token reserved_words {
    [ 'true' | 'false' | 'null' | 'self' | 'class' ]
}

token binary_method_name {
    [ '!' | '%' | '+' | '-' | '/' | '<' | '=' | '>'
    | '?' | '@' | '\\' | '~' | '|' | '*' ]+
}

token keyword_method_name {
    <identifier> ':'
}

token literal {
   | \' <string_literal> \'  {*} #= string
   | <number_literal>        {*} #= number
}

token string_literal {
     <[\w\d\"\\]>+
}

token <number_literal> {
   <absolute_number>
#   {*}
}

token absolute_number {
   | <absolute_float>   {*} #= absolute_float
   | <absolute_integer> {*} #= absolute_integer
}

token absolute_integer {
   \d+
   {*}
}

token absolute_float {
   \d+ '.' \d+
   {*}
}

rule primitive {
   '{' <identifier> '(' [ <primary> [ ',' <primary> ]*]?  ')'  '}'
   {*}
}


##  this <ws> rule treats # as "comment to eol"
##  you may want to replace it with something appropriate
token ws {
    <!ww>
    [ '#' \N* \n? | \s+ ]*
}

## Operators

INIT {
    mantra::Grammar.O(':prec<u>, :assoc<left>',  '%multiplicative');
    mantra::Grammar.O(':prec<t>, :assoc<left>',  '%additive');
}

#token circumfix:sym<( )> { '(' <.ws> <EXPR> ')' }

#token infix:sym<*>  { <sym> <O('%multiplicative, :pirop<mul>')> }
#token infix:sym</>  { <sym> <O('%multiplicative, :pirop<div>')> }

#token infix:sym<+>  { <sym> <O('%additive, :pirop<add>')> }
#token infix:sym<->  { <sym> <O('%additive, :pirop<sub>')> }
