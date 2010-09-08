
.namespace []
.sub "_block11"  :anon :subid("10_1283026625.16285")
.annotate 'line', 0
    get_hll_global $P14, ["mantra";"Metaclass"], "_block13" 
    capture_lex $P14
.annotate 'line', 3
    get_hll_global $P14, ["mantra";"Metaclass"], "_block13" 
    capture_lex $P14
    $P45 = $P14()
.annotate 'line', 1
    .return ($P45)
    .const 'Sub' $P47 = "15_1283026625.16285" 
    .return ($P47)
.end


.namespace []
.sub "" :load :init :subid("post16") :outer("10_1283026625.16285")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1283026625.16285" 
    .local pmc block
    set block, $P12
    $P50 = get_root_global ["parrot"], "P6metaclass"
    $P50."new_class"("mantra::Metaclass")
.end


.namespace ["mantra";"Metaclass"]
.sub "_block13"  :subid("11_1283026625.16285") :outer("10_1283026625.16285")
.annotate 'line', 3
    .const 'Sub' $P15 = "12_1283026625.16285" 
    capture_lex $P15
    .const 'Sub' $P15 = "12_1283026625.16285" 
    newclosure $P40, $P15
    .return ($P40)
    .const 'Sub' $P42 = "14_1283026625.16285" 
    .return ($P42)
.end


.namespace ["mantra";"Metaclass"]
.sub "createClassparents"  :subid("12_1283026625.16285") :method :outer("11_1283026625.16285")
    .param pmc param_18
    .param pmc param_19
.annotate 'line', 3
    .const 'Sub' $P32 = "13_1283026625.16285" 
    capture_lex $P32
    new $P17, 'ExceptionHandler'
    set_addr $P17, control_16
    $P17."handle_types"(57)
    push_eh $P17
    .lex "self", self
    .lex "$classname", param_18
    .lex "@parents", param_19
.annotate 'line', 9
    new $P20, "Undef"
    .lex "$new_class", $P20
.annotate 'line', 5
    find_lex $P22, "$classname"
    set $S23, $P22
    iseq $I24, $S23, "Object"
    if $I24, unless_21_end
.annotate 'line', 6
    find_lex $P25, "@parents"
    $P25."push"("Object")
  unless_21_end:
.annotate 'line', 9
    find_lex $P26, "$classname"
    newclass $P26
    store_lex "$new_class", 
.annotate 'line', 11
    find_lex $P28, "@parents"
    defined $I29, $P28
    unless $I29, for_undef_17
    iter $P27, $P28
    new $P37, 'ExceptionHandler'
    set_addr $P37, loop36_handler
    $P37."handle_types"(64, 66, 65)
    push_eh $P37
  loop36_test:
    unless $P27, loop36_done
    shift $P30, $P27
  loop36_redo:
    .const 'Sub' $P32 = "13_1283026625.16285" 
    capture_lex $P32
    $P32($P30)
  loop36_next:
    goto loop36_test
  loop36_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P38, exception, 'type'
    eq $P38, 64, loop36_next
    eq $P38, 66, loop36_redo
  loop36_done:
    pop_eh 
  for_undef_17:
.annotate 'line', 3
    .return ($P27)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P39, exception, "payload"
    .return ($P39)
.end


.namespace ["mantra";"Metaclass"]
.sub "_block31"  :anon :subid("13_1283026625.16285") :outer("12_1283026625.16285")
    .param pmc param_33
.annotate 'line', 11
    .lex "$_", param_33
.annotate 'line', 12
    find_lex $P34, "$new_class"
    find_lex $P35, "$_"
    addparent $P34, $P35
.annotate 'line', 11
    .return ()
.end


.namespace ["mantra";"Metaclass"]
.sub "_block41" :load :anon :subid("14_1283026625.16285")
.annotate 'line', 3
    .const 'Sub' $P43 = "11_1283026625.16285" 
    $P44 = $P43()
    .return ($P44)
.end


.namespace []
.sub "_block46" :load :anon :subid("15_1283026625.16285")
.annotate 'line', 1
    .const 'Sub' $P48 = "10_1283026625.16285" 
    $P49 = $P48()
    .return ($P49)
.end

