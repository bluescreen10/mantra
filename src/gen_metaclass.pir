
.namespace []
.sub "_block11"  :anon :subid("10_1283117833.28339")
.annotate 'line', 0
    get_hll_global $P14, ["mantra";"Metaclass"], "_block13" 
    capture_lex $P14
.annotate 'line', 3
    get_hll_global $P14, ["mantra";"Metaclass"], "_block13" 
    capture_lex $P14
    $P75 = $P14()
.annotate 'line', 1
    .return ($P75)
    .const 'Sub' $P77 = "16_1283117833.28339" 
    .return ($P77)
.end


.namespace []
.sub "" :load :init :subid("post17") :outer("10_1283117833.28339")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1283117833.28339" 
    .local pmc block
    set block, $P12
    $P80 = get_root_global ["parrot"], "P6metaclass"
    $P80."new_class"("mantra::Metaclass")
.end


.namespace ["mantra";"Metaclass"]
.sub "_block13"  :subid("11_1283117833.28339") :outer("10_1283117833.28339")
.annotate 'line', 3
    .const 'Sub' $P17 = "12_1283117833.28339" 
    capture_lex $P17
    get_global $P15, "%LOADED"
    unless_null $P15, vivify_18
    $P15 = root_new ['parrot';'Hash']
    set_global "%LOADED", $P15
  vivify_18:
    get_global $P16, "%LOADED"
.annotate 'line', 5
    .const 'Sub' $P17 = "12_1283117833.28339" 
    newclosure $P70, $P17
.annotate 'line', 3
    .return ($P70)
    .const 'Sub' $P72 = "15_1283117833.28339" 
    .return ($P72)
.end


.namespace ["mantra";"Metaclass"]
.sub "create_class"  :subid("12_1283117833.28339") :method :outer("11_1283117833.28339")
    .param pmc param_20
    .param pmc param_21
    .param pmc param_22
.annotate 'line', 5
    .const 'Sub' $P55 = "14_1283117833.28339" 
    capture_lex $P55
    .const 'Sub' $P45 = "13_1283117833.28339" 
    capture_lex $P45
    new $P19, 'ExceptionHandler'
    set_addr $P19, control_18
    $P19."handle_types"(57)
    push_eh $P19
    .lex "self", self
    .lex "$classname", param_20
    .lex "@parents", param_21
    .lex "%attributes", param_22
.annotate 'line', 6
    get_global $P23, "%LOADED"
    unless_null $P23, vivify_19
    $P23 = root_new ['parrot';'Hash']
    set_global "%LOADED", $P23
  vivify_19:
.annotate 'line', 13
    new $P24, "Undef"
    .lex "$new_class", $P24
.annotate 'line', 5
    get_global $P25, "%LOADED"
.annotate 'line', 7
    new $P26, "Integer"
    assign $P26, 1
    find_lex $P27, "$classname"
    get_global $P28, "%LOADED"
    unless_null $P28, vivify_20
    $P28 = root_new ['parrot';'Hash']
    set_global "%LOADED", $P28
  vivify_20:
    set $P28[$P27], $P26
.annotate 'line', 9
    find_lex $P32, "@parents"
    set $N33, $P32
    iseq $I34, $N33, 0.0
    if $I34, if_31
    new $P30, 'Integer'
    set $P30, $I34
    goto if_31_end
  if_31:
    find_lex $P35, "$classname"
    set $S36, $P35
    isne $I37, $S36, "Object"
    new $P30, 'Integer'
    set $P30, $I37
  if_31_end:
    unless $P30, if_29_end
.annotate 'line', 10
    find_lex $P38, "@parents"
    $P38."push"("Object")
  if_29_end:
.annotate 'line', 13

         $P0 = find_lex '$classname'
         $P39 = newclass [$P0]
    
    store_lex "$new_class", $P39
.annotate 'line', 18
    find_lex $P41, "%attributes"
    defined $I42, $P41
    unless $I42, for_undef_21
    iter $P40, $P41
    new $P48, 'ExceptionHandler'
    set_addr $P48, loop47_handler
    $P48."handle_types"(64, 66, 65)
    push_eh $P48
  loop47_test:
    unless $P40, loop47_done
    shift $P43, $P40
  loop47_redo:
    .const 'Sub' $P45 = "13_1283117833.28339" 
    capture_lex $P45
    $P45($P43)
  loop47_next:
    goto loop47_test
  loop47_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P49, exception, 'type'
    eq $P49, 64, loop47_next
    eq $P49, 66, loop47_redo
  loop47_done:
    pop_eh 
  for_undef_21:
.annotate 'line', 27
    find_lex $P51, "@parents"
    defined $I52, $P51
    unless $I52, for_undef_22
    iter $P50, $P51
    new $P67, 'ExceptionHandler'
    set_addr $P67, loop66_handler
    $P67."handle_types"(64, 66, 65)
    push_eh $P67
  loop66_test:
    unless $P50, loop66_done
    shift $P53, $P50
  loop66_redo:
    .const 'Sub' $P55 = "14_1283117833.28339" 
    capture_lex $P55
    $P55($P53)
  loop66_next:
    goto loop66_test
  loop66_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P68, exception, 'type'
    eq $P68, 64, loop66_next
    eq $P68, 66, loop66_redo
  loop66_done:
    pop_eh 
  for_undef_22:
.annotate 'line', 5
    .return ($P50)
  control_18:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P69, exception, "payload"
    .return ($P69)
.end


.namespace ["mantra";"Metaclass"]
.sub "_block44"  :anon :subid("13_1283117833.28339") :outer("12_1283117833.28339")
    .param pmc param_46
.annotate 'line', 18
    .lex "$_", param_46
.annotate 'line', 19

              $P0 = find_lex '$new_class'
              $P1 = get_class $P0
              $P2 = find_lex '$_'
              $P1.'add_attribute'($P2)
        
.annotate 'line', 18
    .return ()
.end


.namespace ["mantra";"Metaclass"]
.sub "_block54"  :anon :subid("14_1283117833.28339") :outer("12_1283117833.28339")
    .param pmc param_56
.annotate 'line', 27
    .lex "$_", param_56
.annotate 'line', 28
    find_lex $P58, "$_"
    get_global $P59, "%LOADED"
    unless_null $P59, vivify_23
    $P59 = root_new ['parrot';'Hash']
  vivify_23:
    set $P60, $P59[$P58]
    unless_null $P60, vivify_24
    new $P60, "Undef"
  vivify_24:
    if $P60, unless_57_end
.annotate 'line', 29
    new $P61, "Integer"
    assign $P61, 1
    find_lex $P62, "$_"
    get_global $P63, "%LOADED"
    unless_null $P63, vivify_25
    $P63 = root_new ['parrot';'Hash']
    set_global "%LOADED", $P63
  vivify_25:
    set $P63[$P62], $P61
.annotate 'line', 30
    get_hll_global $P64, ["mantra"], "Loader"
    find_lex $P65, "$_"
    $P64."import"($P65)
  unless_57_end:
.annotate 'line', 32

              $P0 = find_lex '$_'
              $P1 = get_class $P0
              $P2 = find_lex '$new_class'
              $P3 = get_class $P2
              addparent $P3, $P1
        
.annotate 'line', 27
    .return ()
.end


.namespace ["mantra";"Metaclass"]
.sub "_block71" :load :anon :subid("15_1283117833.28339")
.annotate 'line', 3
    .const 'Sub' $P73 = "11_1283117833.28339" 
    $P74 = $P73()
    .return ($P74)
.end


.namespace []
.sub "_block76" :load :anon :subid("16_1283117833.28339")
.annotate 'line', 1
    .const 'Sub' $P78 = "10_1283117833.28339" 
    $P79 = $P78()
    .return ($P79)
.end

