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

## General grammars

token identifier {
    <alpha><alnum>*
}

## Method defintion

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

# Statement list
rule statement_list {
    [ <statement> ** <dot> ]*
}

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
    | <message>
    | <primary>
}


# Block

rule block {
    '{' ~ '}' <block_contents>
}

rule block_contents {
    <.begin_block>
    [ <ident>* '|' ]? <statement_list>
}

token begin_block {
    <?>
}

# /Block

rule message {
    <primary>
    [
    | <keyword_first=keyword_message>
    | <binary_first=binary_message>
    | <unary_first=unary_method>+ <binary_second=binary_message>* <keyword_third=keyword_message>?
    ]
}

token binary_message {
    <method_name=binary_method_name> <ws>
    <primary>
        [ \h* <unary_method>
             [
             | <?before <.ws> \w+ ':'>
             | <?before '.'>
             | <?before \s+>
             ]
        ]*
}

token keyword_message {
    <method_name=ident> ':' <ws> <keyword_argument>
    [ <ws> <method_name=ident> ':' <ws> <keyword_argument> ]*
}

token keyword_argument {
    <primary>
        [ \h* <unary_method>
              [
              | <?before \w+ ':' >
              | <?before \s+>
              | <?before '.'>
              ]
        ]*
        [ \h* <binary_message>
              [
              | <?before \w+ ':'>
              | <?before \h*>
              | <?before '.'>
              ]
        ]*
}

rule primary {
     | <variable>
     | <literal>
     | '(' ~ ')' <basic_expression>
     | <block>
}

token variable {
    | <pseudo_variable_self>
    | <pseudo_variable_object>
    | <instance_variable>
    | <lexical_variable>
}

token writable_variable {
}

token assignment {
     <assignment_target> ':' \h* <basic_expression>
}

rule assignment_target {
     <!reserved_words><variable>
}

token pseudo_variable_object {
    'Object'
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
     | 'Object'  #Do we really want object here?
     | 'true'
     | 'false'
     | 'null'
     | 'self'
     | 'class'
}

token binary_method_name {
     [ '!' | '%' | '+' | '-' | '/' | '<' | '=' | '>'
     | '?' | '$' | '\\' | '~' | '|' | '*' ]+
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
    '<' ~ '>'  <primitive_contents>
}

token primitive_contents {
    <identifier=ident> '(' [ <primary> ** ',' ]? ')'
}


##  this <ws> rule treats # as "comment to eol"
##  you may want to replace it with something appropriate
token ws {
    <!ww>
    [ '#' \N* \n? | \s+ | \n+ ]*
}
