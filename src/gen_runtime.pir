
.namespace []
.sub "_block11"  :anon :subid("10_1283117832.97723")
.annotate 'line', 0
    .const 'Sub' $P21 = "12_1283117832.97723" 
    capture_lex $P21
    .const 'Sub' $P13 = "11_1283117832.97723" 
    capture_lex $P13
.annotate 'line', 3
    .const 'Sub' $P13 = "11_1283117832.97723" 
    newclosure $P20, $P13
    .lex "print", $P20
.annotate 'line', 8
    .const 'Sub' $P21 = "12_1283117832.97723" 
    newclosure $P28, $P21
    .lex "say", $P28
.annotate 'line', 1
    find_lex $P29, "print"
    find_lex $P30, "say"
    .return ($P30)
    .const 'Sub' $P32 = "13_1283117832.97723" 
    .return ($P32)
.end


.namespace []
.sub "print"  :subid("11_1283117832.97723") :outer("10_1283117832.97723")
    .param pmc param_16 :slurpy
.annotate 'line', 3
    new $P15, 'ExceptionHandler'
    set_addr $P15, control_14
    $P15."handle_types"(57)
    push_eh $P15
    .lex "@args", param_16
.annotate 'line', 4
    find_lex $P17, "@args"
    join $S18, "", $P17
    print $S18
.annotate 'line', 3
    .return (1)
  control_14:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P19, exception, "payload"
    .return ($P19)
.end


.namespace []
.sub "say"  :subid("12_1283117832.97723") :outer("10_1283117832.97723")
    .param pmc param_24 :slurpy
.annotate 'line', 8
    new $P23, 'ExceptionHandler'
    set_addr $P23, control_22
    $P23."handle_types"(57)
    push_eh $P23
    .lex "@args", param_24
.annotate 'line', 9
    find_lex $P25, "@args"
    join $S26, "", $P25
    say $S26
.annotate 'line', 8
    .return (1)
  control_22:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P27, exception, "payload"
    .return ($P27)
.end


.namespace []
.sub "_block31" :load :anon :subid("13_1283117832.97723")
.annotate 'line', 1
    .const 'Sub' $P33 = "10_1283117832.97723" 
    $P34 = $P33()
    .return ($P34)
.end

