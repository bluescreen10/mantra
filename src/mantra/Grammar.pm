=begin overview

This is the grammar for mantra in Perl 6 rules.

=end overview

grammar mantra::Grammar is HLL::Grammar;

token TOP {
    <.begin>
    <statement_list>
    [ $ || <.panic: 'Syntax error'> ]
}

token begin {
    <?>
}

# Statement list
rule statement_list {
    [ <statement> ** <dot> ]*
}

## General grammars

## Method defintion



# Statement
rule statement {
    <dot>*
    <expression>
    <dot>*
}

token dot {
    '.'
}

rule expression {
    | <assignment>
    | <return_statement>
    | <basic_expression>
}

rule return_statement {
   '^' <basic_expression>
}

rule basic_expression {
    | <primitive>
    | <message_expr>
    | <primary>
}

# Block
rule block {
   '{' ~ '}' <block_contents>
}

rule block_contents {
    <.begin_block>
    [ <ident> <ident>* '|' ]? <statement_list>
}

token begin_block {
   <?>
}

# /Block

# Message

rule message_expr {
   <message_primary> [ <message> ** ';' ]
}

token message_primary {
   <primary>
}

rule message {
   | <keyword_expr>
   | <binary_expr>
   | <unary_expr>
}

# /Message

# Unary
rule unary_expr {
   [ <unary_msg> ]+ <binary_msg>* <keyword_msg>?
}

token unary_msg {
   <ident> <!before ':'>
}

# /Unary

# Binary

rule binary_expr {
   [ <binary_msg> ]+ <keyword_msg>?
}

rule binary_msg {
   <binary_sel> <binary_arg>
}

token binary_sel {
     [ '!' | '%' | '+'  | '-' | '/' | '<' | '=' | '>'
     | '?' | '$' | '\\' | '~' | '|' | '*' | ',' ]+
}

rule binary_arg {
   <primary> <unary_msg>*
}


# /Binary

# Keyword

rule keyword_expr {
   <keyword_msg>
}

rule keyword_msg {
   [ <keyword_sel> <keyword_arg> ]+
}

token keyword_sel {
   <ident> ':'
}

token keyword_arg {
    <primary> [ <!keyword_msg> <unary_msg> ]* <binary_msg>*
}

# /Keyword

rule primary {
     | <variable>
     | <literal>
     | '(' ~ ')' <basic_expression>
     | <block>
}

token variable {
    | <pseudo_variable_self>
    | <instance_variable>
    | <lexical_variable>
}

rule assignment {

     <assignment_target> <basic_expression>
}

token assignment_target {
     <!reserved_words><variable> ':'
}

token pseudo_variable_self {
    'self'
}

token instance_variable {
     '@' <ident>
}

token lexical_variable {
     <name=ident>
}


# # Tokens

token reserved_words {
     | 'null'
     | 'self'
}

token literal {
    | <string_constant>
    | <literal_number>
}

token string_constant { <quote> }

proto token quote { <...> }
token quote:sym<'> { <?[']> <quote_EXPR: ':q'> }

token literal_number {
    <integer>
}

token integer {
    ['-']? \s* \d+
}

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
    '<' ~ '>'  <primitive_contents>
}

token primitive_contents {
     <primitive_name> '(' [ <primary> ** ',' ]? ')'
}

token primitive_name {
     <ident>
}

##  this <ws> rule treats # as "comment to eol"
##  you may want to replace it with something appropriate
token ws {
    <!ww>
    [ '#' \N* \n? | \s+ | \n+ ]*
}
