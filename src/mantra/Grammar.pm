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
    <dot>*
    [ <expr> ** <dot> ]*
    <dot>*
}

## General grammars

## Method defintion

token dot {
    '.'
}

# Expression

token expr {
   | <bind_expr>
   | <return_expr>
   | <basic_expr>
}


rule return_expr { '^' <basic_expr> }

# /Expression

# Basic Expression

token basic_expr {
   |<primitive>
   |<message_target> [ <message> ** ';']?
}

# /Basic Expression

# Block
rule block {
   '{' ~ '}' <block_contents>
}

rule block_contents {
    <.begin_block>
    [ <ident> <ident>* '|' ]?
    <statement_list>
}

token begin_block {
   <?>
}

# /Block

# Message

token message_target {
   <primary>
}

proto token message { <...> }

# /Message

# Unary

rule message:sym<unary> {
   [ <unary_msg> ]+ <binary_msg>* <keyword_msg>?
}

token unary_msg {
   <ident> <!before ':'>
}

# /Unary

# Binary

rule message:sym<binary> {
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

rule message:sym<keyword> {
   <keyword_msg>
}

rule keyword_msg {
   [ <keyword_sel> <keyword_arg> ]+
}

token keyword_sel {
   <ident> ':'
}

token keyword_arg {
    <primary> [ <unary_msg> ]* <binary_msg>*
}

# /Keyword

rule primary {
     | <block>
     | <variable>
     | <literal>
     | '(' ~ ')' <basic_expr>
}

token variable {
    | <pseudo_variable_self>
    | <instance_variable>
    | <lexical_variable>
}

# Bind

rule bind_expr { <bind_target> <basic_expr> }

token bind_target { <!reserved_words><variable> ':' }

token reserved_words { 'self' }

# /Bind

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
    [ '"' '"' \N* \n? | '"' .*? '"' | \s+ | \n+ ]*
}
