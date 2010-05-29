.sub 'main' :anon :load :init
    new $P20, "String"
    assign $P20, "variable"
    .lex "a", $P20
    find_lex $P21, "a"
    .lex "b", $P21
    find_lex $P22, "b"
.end


