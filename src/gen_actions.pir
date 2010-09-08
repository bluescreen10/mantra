
.namespace []
.sub "_block11"  :anon :subid("10_1283117838.46117")
.annotate 'line', 0
    get_hll_global $P14, ["mantra";"Actions"], "_block13" 
    capture_lex $P14
.annotate 'line', 3
    get_hll_global $P14, ["mantra";"Actions"], "_block13" 
    capture_lex $P14
    $P989 = $P14()
.annotate 'line', 1
    .return ($P989)
    .const 'Sub' $P991 = "62_1283117838.46117" 
    .return ($P991)
.end


.namespace []
.sub "" :load :init :subid("post63") :outer("10_1283117838.46117")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1283117838.46117" 
    .local pmc block
    set block, $P12
    $P994 = get_root_global ["parrot"], "P6metaclass"
    $P994."new_class"("mantra::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["mantra";"Actions"]
.sub "_block13"  :subid("11_1283117838.46117") :outer("10_1283117838.46117")
.annotate 'line', 3
    .const 'Sub' $P974 = "60_1283117838.46117" 
    capture_lex $P974
    .const 'Sub' $P964 = "59_1283117838.46117" 
    capture_lex $P964
    .const 'Sub' $P951 = "58_1283117838.46117" 
    capture_lex $P951
    .const 'Sub' $P917 = "56_1283117838.46117" 
    capture_lex $P917
    .const 'Sub' $P835 = "53_1283117838.46117" 
    capture_lex $P835
    .const 'Sub' $P807 = "51_1283117838.46117" 
    capture_lex $P807
    .const 'Sub' $P791 = "50_1283117838.46117" 
    capture_lex $P791
    .const 'Sub' $P782 = "49_1283117838.46117" 
    capture_lex $P782
    .const 'Sub' $P760 = "48_1283117838.46117" 
    capture_lex $P760
    .const 'Sub' $P737 = "47_1283117838.46117" 
    capture_lex $P737
    .const 'Sub' $P714 = "46_1283117838.46117" 
    capture_lex $P714
    .const 'Sub' $P682 = "45_1283117838.46117" 
    capture_lex $P682
    .const 'Sub' $P603 = "41_1283117838.46117" 
    capture_lex $P603
    .const 'Sub' $P568 = "39_1283117838.46117" 
    capture_lex $P568
    .const 'Sub' $P502 = "36_1283117838.46117" 
    capture_lex $P502
    .const 'Sub' $P387 = "31_1283117838.46117" 
    capture_lex $P387
    .const 'Sub' $P355 = "30_1283117838.46117" 
    capture_lex $P355
    .const 'Sub' $P323 = "29_1283117838.46117" 
    capture_lex $P323
    .const 'Sub' $P308 = "28_1283117838.46117" 
    capture_lex $P308
    .const 'Sub' $P292 = "27_1283117838.46117" 
    capture_lex $P292
    .const 'Sub' $P258 = "25_1283117838.46117" 
    capture_lex $P258
    .const 'Sub' $P237 = "24_1283117838.46117" 
    capture_lex $P237
    .const 'Sub' $P170 = "22_1283117838.46117" 
    capture_lex $P170
    .const 'Sub' $P159 = "21_1283117838.46117" 
    capture_lex $P159
    .const 'Sub' $P113 = "19_1283117838.46117" 
    capture_lex $P113
    .const 'Sub' $P102 = "18_1283117838.46117" 
    capture_lex $P102
    .const 'Sub' $P85 = "17_1283117838.46117" 
    capture_lex $P85
    .const 'Sub' $P75 = "16_1283117838.46117" 
    capture_lex $P75
    .const 'Sub' $P48 = "14_1283117838.46117" 
    capture_lex $P48
    .const 'Sub' $P29 = "13_1283117838.46117" 
    capture_lex $P29
    .const 'Sub' $P15 = "12_1283117838.46117" 
    capture_lex $P15
.annotate 'line', 468
    .const 'Sub' $P974 = "60_1283117838.46117" 
    newclosure $P984, $P974
.annotate 'line', 3
    .return ($P984)
    .const 'Sub' $P986 = "61_1283117838.46117" 
    .return ($P986)
.end


.namespace ["mantra";"Actions"]
.sub "compiler_init"  :subid("12_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_18
.annotate 'line', 3
    new $P17, 'ExceptionHandler'
    set_addr $P17, control_16
    $P17."handle_types"(57)
    push_eh $P17
    .lex "self", self
    .lex "$/", param_18
.annotate 'line', 4
    get_global $P19, "$?BLOCK"
    unless_null $P19, vivify_64
    new $P19, "Undef"
    set_global "$?BLOCK", $P19
  vivify_64:
.annotate 'line', 5
    get_global $P20, "@?BLOCK"
    unless_null $P20, vivify_65
    $P20 = root_new ['parrot';'ResizablePMCArray']
    set_global "@?BLOCK", $P20
  vivify_65:
.annotate 'line', 3
    get_global $P21, "$?BLOCK"
    get_global $P22, "@?BLOCK"
.annotate 'line', 7
    get_hll_global $P23, ["PAST"], "Block"
    $P24 = $P23."new"("mantra" :named("hll"), "declaration" :named("blocktype"))
    set_global "$?BLOCK", $P24
.annotate 'line', 8
    get_global $P25, "@?BLOCK"
    get_global $P26, "$?BLOCK"
    $P27 = $P25."unshift"($P26)
.annotate 'line', 3
    .return ($P27)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P28, exception, "payload"
    .return ($P28)
.end


.namespace ["mantra";"Actions"]
.sub "TOP"  :subid("13_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_32
.annotate 'line', 12
    new $P31, 'ExceptionHandler'
    set_addr $P31, control_30
    $P31."handle_types"(57)
    push_eh $P31
    .lex "self", self
    .lex "$/", param_32
.annotate 'line', 13
    get_global $P33, "$?BLOCK"
    unless_null $P33, vivify_66
    new $P33, "Undef"
    set_global "$?BLOCK", $P33
  vivify_66:
.annotate 'line', 14
    get_global $P34, "@?BLOCK"
    unless_null $P34, vivify_67
    $P34 = root_new ['parrot';'ResizablePMCArray']
    set_global "@?BLOCK", $P34
  vivify_67:
.annotate 'line', 17
    new $P35, "Undef"
    .lex "$past", $P35
.annotate 'line', 12
    get_global $P36, "$?BLOCK"
    get_global $P37, "@?BLOCK"
.annotate 'line', 17
    get_global $P38, "@?BLOCK"
    $P39 = $P38."shift"()
    store_lex "$past", $P39
.annotate 'line', 18
    find_lex $P40, "$past"
    find_lex $P41, "$/"
    unless_null $P41, vivify_68
    $P41 = root_new ['parrot';'Hash']
  vivify_68:
    set $P42, $P41["main"]
    unless_null $P42, vivify_69
    new $P42, "Undef"
  vivify_69:
    $P43 = $P42."ast"()
    $P40."push"($P43)
.annotate 'line', 19
    find_lex $P44, "$/"
    find_lex $P45, "$past"
    $P46 = $P44."!make"($P45)
.annotate 'line', 12
    .return ($P46)
  control_30:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P47, exception, "payload"
    .return ($P47)
.end


.namespace ["mantra";"Actions"]
.sub "main"  :subid("14_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_51
.annotate 'line', 22
    .const 'Sub' $P62 = "15_1283117838.46117" 
    capture_lex $P62
    new $P50, 'ExceptionHandler'
    set_addr $P50, control_49
    $P50."handle_types"(57)
    push_eh $P50
    .lex "self", self
    .lex "$/", param_51
.annotate 'line', 23
    new $P52, "Undef"
    .lex "$past", $P52
    get_hll_global $P53, ["PAST"], "Stmts"
    find_lex $P54, "$/"
    $P55 = $P53."new"($P54 :named("node"))
    store_lex "$past", $P55
.annotate 'line', 24
    find_lex $P57, "$/"
    unless_null $P57, vivify_70
    $P57 = root_new ['parrot';'Hash']
  vivify_70:
    set $P58, $P57["statement_or_class"]
    unless_null $P58, vivify_71
    new $P58, "Undef"
  vivify_71:
    defined $I59, $P58
    unless $I59, for_undef_72
    iter $P56, $P58
    new $P69, 'ExceptionHandler'
    set_addr $P69, loop68_handler
    $P69."handle_types"(64, 66, 65)
    push_eh $P69
  loop68_test:
    unless $P56, loop68_done
    shift $P60, $P56
  loop68_redo:
    .const 'Sub' $P62 = "15_1283117838.46117" 
    capture_lex $P62
    $P62($P60)
  loop68_next:
    goto loop68_test
  loop68_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P70, exception, 'type'
    eq $P70, 64, loop68_next
    eq $P70, 66, loop68_redo
  loop68_done:
    pop_eh 
  for_undef_72:
.annotate 'line', 27
    find_lex $P71, "$/"
    find_lex $P72, "$past"
    $P73 = $P71."!make"($P72)
.annotate 'line', 22
    .return ($P73)
  control_49:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P74, exception, "payload"
    .return ($P74)
.end


.namespace ["mantra";"Actions"]
.sub "_block61"  :anon :subid("15_1283117838.46117") :outer("14_1283117838.46117")
    .param pmc param_63
.annotate 'line', 24
    .lex "$_", param_63
.annotate 'line', 25
    find_lex $P64, "$past"
    find_lex $P65, "$_"
    $P66 = $P65."ast"()
    $P67 = $P64."push"($P66)
.annotate 'line', 24
    .return ($P67)
.end


.namespace ["mantra";"Actions"]
.sub "statement_or_class"  :subid("16_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_78
.annotate 'line', 30
    new $P77, 'ExceptionHandler'
    set_addr $P77, control_76
    $P77."handle_types"(57)
    push_eh $P77
    .lex "self", self
    .lex "$/", param_78
.annotate 'line', 31
    find_lex $P79, "$/"
    find_lex $P80, "$/"
    unless_null $P80, vivify_73
    $P80 = root_new ['parrot';'Hash']
  vivify_73:
    set $P81, $P80["class_definition"]
    unless_null $P81, vivify_74
    new $P81, "Undef"
  vivify_74:
    $P82 = $P81."ast"()
    $P83 = $P79."!make"($P82)
.annotate 'line', 30
    .return ($P83)
  control_76:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P84, exception, "payload"
    .return ($P84)
.end


.namespace ["mantra";"Actions"]
.sub "begin_class"  :subid("17_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_88
.annotate 'line', 34
    new $P87, 'ExceptionHandler'
    set_addr $P87, control_86
    $P87."handle_types"(57)
    push_eh $P87
    .lex "self", self
    .lex "$/", param_88
.annotate 'line', 35
    get_global $P89, "$?BLOCK"
    unless_null $P89, vivify_75
    new $P89, "Undef"
    set_global "$?BLOCK", $P89
  vivify_75:
.annotate 'line', 36
    get_global $P90, "@?BLOCK"
    unless_null $P90, vivify_76
    $P90 = root_new ['parrot';'ResizablePMCArray']
    set_global "@?BLOCK", $P90
  vivify_76:
.annotate 'line', 37
    get_global $P91, "%ATTRIBUTES"
    unless_null $P91, vivify_77
    $P91 = root_new ['parrot';'Hash']
    set_global "%ATTRIBUTES", $P91
  vivify_77:
.annotate 'line', 34
    get_global $P92, "$?BLOCK"
    get_global $P93, "@?BLOCK"
    get_global $P94, "%ATTRIBUTES"
.annotate 'line', 40
    get_hll_global $P95, ["PAST"], "Block"
    find_lex $P96, "$/"
    $P97 = $P95."new"("declaration" :named("blocktype"), $P96 :named("node"))
    set_global "$?BLOCK", $P97
.annotate 'line', 41
    get_global $P98, "@?BLOCK"
    get_global $P99, "$?BLOCK"
    $P98."unshift"($P99)
.annotate 'line', 42
    $P100 = root_new ['parrot';'Hash']
    set_global "%ATTRIBUTES", $P100
.annotate 'line', 34
    .return ($P100)
  control_86:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.namespace ["mantra";"Actions"]
.sub "class_name"  :subid("18_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_105
.annotate 'line', 45
    new $P104, 'ExceptionHandler'
    set_addr $P104, control_103
    $P104."handle_types"(57)
    push_eh $P104
    .lex "self", self
    .lex "$/", param_105
.annotate 'line', 46
    get_global $P106, "$?CLASS"
    unless_null $P106, vivify_78
    new $P106, "Undef"
    set_global "$?CLASS", $P106
  vivify_78:
.annotate 'line', 45
    get_global $P107, "$?CLASS"
.annotate 'line', 47
    find_lex $P108, "$/"
    unless_null $P108, vivify_79
    $P108 = root_new ['parrot';'Hash']
  vivify_79:
    set $P109, $P108["class_identifier"]
    unless_null $P109, vivify_80
    new $P109, "Undef"
  vivify_80:
    set $S110, $P109
    new $P111, 'String'
    set $P111, $S110
    set_global "$?CLASS", $P111
.annotate 'line', 45
    .return ($P111)
  control_103:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, "payload"
    .return ($P112)
.end


.namespace ["mantra";"Actions"]
.sub "class_definition"  :subid("19_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_116
.annotate 'line', 50
    .const 'Sub' $P138 = "20_1283117838.46117" 
    capture_lex $P138
    new $P115, 'ExceptionHandler'
    set_addr $P115, control_114
    $P115."handle_types"(57)
    push_eh $P115
    .lex "self", self
    .lex "$/", param_116
.annotate 'line', 51
    get_global $P117, "$?BLOCK"
    unless_null $P117, vivify_81
    new $P117, "Undef"
    set_global "$?BLOCK", $P117
  vivify_81:
.annotate 'line', 52
    get_global $P118, "@?BLOCK"
    unless_null $P118, vivify_82
    $P118 = root_new ['parrot';'ResizablePMCArray']
    set_global "@?BLOCK", $P118
  vivify_82:
.annotate 'line', 53
    get_global $P119, "$?CLASS"
    unless_null $P119, vivify_83
    new $P119, "Undef"
    set_global "$?CLASS", $P119
  vivify_83:
.annotate 'line', 54
    get_global $P120, "%ATTRIBUTES"
    unless_null $P120, vivify_84
    $P120 = root_new ['parrot';'Hash']
    set_global "%ATTRIBUTES", $P120
  vivify_84:
.annotate 'line', 56
    new $P121, "Undef"
    .lex "$past", $P121
.annotate 'line', 50
    get_global $P122, "$?BLOCK"
    get_global $P123, "@?BLOCK"
    get_global $P124, "$?CLASS"
    get_global $P125, "%ATTRIBUTES"
.annotate 'line', 56
    get_global $P126, "$?BLOCK"
    store_lex "$past", $P126
.annotate 'line', 61
    get_hll_global $P127, ["mantra"], "Metaclass"
    get_global $P128, "$?CLASS"
    find_lex $P129, "$/"
    unless_null $P129, vivify_85
    $P129 = root_new ['parrot';'Hash']
  vivify_85:
    set $P130, $P129["superclass"]
    unless_null $P130, vivify_86
    new $P130, "Undef"
  vivify_86:
    get_global $P131, "%ATTRIBUTES"
    $P127."create_class"($P128, $P130, $P131)
.annotate 'line', 65
    find_lex $P133, "$/"
    unless_null $P133, vivify_87
    $P133 = root_new ['parrot';'Hash']
  vivify_87:
    set $P134, $P133["method_definition"]
    unless_null $P134, vivify_88
    new $P134, "Undef"
  vivify_88:
    defined $I135, $P134
    unless $I135, for_undef_89
    iter $P132, $P134
    new $P150, 'ExceptionHandler'
    set_addr $P150, loop149_handler
    $P150."handle_types"(64, 66, 65)
    push_eh $P150
  loop149_test:
    unless $P132, loop149_done
    shift $P136, $P132
  loop149_redo:
    .const 'Sub' $P138 = "20_1283117838.46117" 
    capture_lex $P138
    $P138($P136)
  loop149_next:
    goto loop149_test
  loop149_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P151, exception, 'type'
    eq $P151, 64, loop149_next
    eq $P151, 66, loop149_redo
  loop149_done:
    pop_eh 
  for_undef_89:
.annotate 'line', 72
    get_global $P152, "@?BLOCK"
    $P152."shift"()
.annotate 'line', 73
    get_global $P153, "@?BLOCK"
    unless_null $P153, vivify_92
    $P153 = root_new ['parrot';'ResizablePMCArray']
  vivify_92:
    set $P154, $P153[0]
    unless_null $P154, vivify_93
    new $P154, "Undef"
  vivify_93:
    set_global "$?BLOCK", $P154
.annotate 'line', 74
    find_lex $P155, "$/"
    find_lex $P156, "$past"
    $P157 = $P155."!make"($P156)
.annotate 'line', 50
    .return ($P157)
  control_114:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P158, exception, "payload"
    .return ($P158)
.end


.namespace ["mantra";"Actions"]
.sub "_block137"  :anon :subid("20_1283117838.46117") :outer("19_1283117838.46117")
    .param pmc param_140
.annotate 'line', 66
    new $P139, "Undef"
    .lex "$method", $P139
    .lex "$_", param_140
    find_lex $P141, "$_"
    $P142 = $P141."ast"()
    store_lex "$method", $P142
.annotate 'line', 67
    find_lex $P143, "$method"
    find_lex $P144, "$/"
    unless_null $P144, vivify_90
    $P144 = root_new ['parrot';'Hash']
  vivify_90:
    set $P145, $P144["class_name"]
    unless_null $P145, vivify_91
    new $P145, "Undef"
  vivify_91:
    $P143."namespace"($P145)
.annotate 'line', 68
    find_lex $P146, "$past"
    find_lex $P147, "$method"
    $P148 = $P146."push"($P147)
.annotate 'line', 65
    .return ($P148)
.end


.namespace ["mantra";"Actions"]
.sub "class_identifier"  :subid("21_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_162
.annotate 'line', 79
    new $P161, 'ExceptionHandler'
    set_addr $P161, control_160
    $P161."handle_types"(57)
    push_eh $P161
    .lex "self", self
    .lex "$/", param_162
.annotate 'line', 80
    find_lex $P163, "$/"
    get_hll_global $P164, ["PAST"], "Val"
    find_lex $P165, "$/"
    find_lex $P166, "$/"
    $P167 = $P164."new"("String" :named("returns"), $P165 :named("value"), $P166 :named("node"))
    $P168 = $P163."!make"($P167)
.annotate 'line', 79
    .return ($P168)
  control_160:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P169, exception, "payload"
    .return ($P169)
.end


.namespace ["mantra";"Actions"]
.sub "begin_method_definition"  :subid("22_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_173
.annotate 'line', 83
    .const 'Sub' $P215 = "23_1283117838.46117" 
    capture_lex $P215
    new $P172, 'ExceptionHandler'
    set_addr $P172, control_171
    $P172."handle_types"(57)
    push_eh $P172
    .lex "self", self
    .lex "$/", param_173
.annotate 'line', 84
    get_global $P174, "$?BLOCK"
    unless_null $P174, vivify_94
    new $P174, "Undef"
    set_global "$?BLOCK", $P174
  vivify_94:
.annotate 'line', 85
    get_global $P175, "@?BLOCK"
    unless_null $P175, vivify_95
    $P175 = root_new ['parrot';'ResizablePMCArray']
    set_global "@?BLOCK", $P175
  vivify_95:
.annotate 'line', 83
    get_global $P176, "$?BLOCK"
    get_global $P177, "@?BLOCK"
.annotate 'line', 87
    get_hll_global $P178, ["PAST"], "Block"
    find_lex $P179, "$/"
    $P180 = $P178."new"("method" :named("blocktype"), $P179 :named("node"))
    set_global "$?BLOCK", $P180
.annotate 'line', 90
    find_lex $P182, "$/"
    unless_null $P182, vivify_96
    $P182 = root_new ['parrot';'Hash']
  vivify_96:
    set $P183, $P182["binary_method"]
    unless_null $P183, vivify_97
    new $P183, "Undef"
  vivify_97:
    if $P183, if_181
.annotate 'line', 97
    find_lex $P199, "$/"
    unless_null $P199, vivify_98
    $P199 = root_new ['parrot';'Hash']
  vivify_98:
    set $P200, $P199["keyword_method"]
    unless_null $P200, vivify_99
    new $P200, "Undef"
  vivify_99:
    if $P200, if_198
.annotate 'line', 106
    find_lex $P228, "$/"
    unless_null $P228, vivify_100
    $P228 = root_new ['parrot';'Hash']
  vivify_100:
    set $P229, $P228["unary_method"]
    unless_null $P229, vivify_101
    new $P229, "Undef"
  vivify_101:
    unless $P229, if_227_end
.annotate 'line', 107
    get_global $P230, "$?BLOCK"
    find_lex $P231, "$/"
    unless_null $P231, vivify_102
    $P231 = root_new ['parrot';'Hash']
  vivify_102:
    set $P232, $P231["unary_method"]
    unless_null $P232, vivify_103
    new $P232, "Undef"
  vivify_103:
    $P230."name"($P232)
  if_227_end:
.annotate 'line', 106
    goto if_198_end
  if_198:
.annotate 'line', 98
    get_global $P201, "$?BLOCK"
    find_lex $P202, "$/"
    unless_null $P202, vivify_104
    $P202 = root_new ['parrot';'Hash']
  vivify_104:
    set $P203, $P202["keyword_method"]
    unless_null $P203, vivify_105
    $P203 = root_new ['parrot';'Hash']
  vivify_105:
    set $P204, $P203["method_name"]
    unless_null $P204, vivify_106
    new $P204, "Undef"
  vivify_106:
    join $S205, ":", $P204
    new $P206, 'String'
    set $P206, $S205
    concat $P207, $P206, ":"
    $P201."name"($P207)
.annotate 'line', 99
    find_lex $P209, "$/"
    unless_null $P209, vivify_107
    $P209 = root_new ['parrot';'Hash']
  vivify_107:
    set $P210, $P209["keyword_method"]
    unless_null $P210, vivify_108
    $P210 = root_new ['parrot';'Hash']
  vivify_108:
    set $P211, $P210["param"]
    unless_null $P211, vivify_109
    new $P211, "Undef"
  vivify_109:
    defined $I212, $P211
    unless $I212, for_undef_110
    iter $P208, $P211
    new $P225, 'ExceptionHandler'
    set_addr $P225, loop224_handler
    $P225."handle_types"(64, 66, 65)
    push_eh $P225
  loop224_test:
    unless $P208, loop224_done
    shift $P213, $P208
  loop224_redo:
    .const 'Sub' $P215 = "23_1283117838.46117" 
    capture_lex $P215
    $P215($P213)
  loop224_next:
    goto loop224_test
  loop224_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P226, exception, 'type'
    eq $P226, 64, loop224_next
    eq $P226, 66, loop224_redo
  loop224_done:
    pop_eh 
  for_undef_110:
  if_198_end:
.annotate 'line', 97
    goto if_181_end
  if_181:
.annotate 'line', 91
    get_global $P184, "$?BLOCK"
    find_lex $P185, "$/"
    unless_null $P185, vivify_111
    $P185 = root_new ['parrot';'Hash']
  vivify_111:
    set $P186, $P185["binary_method"]
    unless_null $P186, vivify_112
    $P186 = root_new ['parrot';'Hash']
  vivify_112:
    set $P187, $P186["method_name"]
    unless_null $P187, vivify_113
    new $P187, "Undef"
  vivify_113:
    $P184."name"($P187)
.annotate 'line', 92
    get_global $P188, "$?BLOCK"
    get_hll_global $P189, ["PAST"], "Var"
    find_lex $P190, "$/"
    unless_null $P190, vivify_114
    $P190 = root_new ['parrot';'Hash']
  vivify_114:
    set $P191, $P190["binary_method"]
    unless_null $P191, vivify_115
    $P191 = root_new ['parrot';'Hash']
  vivify_115:
    set $P192, $P191["param"]
    unless_null $P192, vivify_116
    new $P192, "Undef"
  vivify_116:
    $P193 = $P189."new"("parameter" :named("scope"), $P192 :named("name"))
    $P188."push"($P193)
.annotate 'line', 93
    get_global $P194, "$?BLOCK"
    find_lex $P195, "$/"
    unless_null $P195, vivify_117
    $P195 = root_new ['parrot';'Hash']
  vivify_117:
    set $P196, $P195["binary_method"]
    unless_null $P196, vivify_118
    $P196 = root_new ['parrot';'Hash']
  vivify_118:
    set $P197, $P196["param"]
    unless_null $P197, vivify_119
    new $P197, "Undef"
  vivify_119:
    $P194."symbol"($P197, "lexical" :named("scope"))
  if_181_end:
.annotate 'line', 111
    get_global $P233, "@?BLOCK"
    get_global $P234, "$?BLOCK"
    $P235 = $P233."unshift"($P234)
.annotate 'line', 83
    .return ($P235)
  control_171:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P236, exception, "payload"
    .return ($P236)
.end


.namespace ["mantra";"Actions"]
.sub "_block214"  :anon :subid("23_1283117838.46117") :outer("22_1283117838.46117")
    .param pmc param_216
.annotate 'line', 99
    .lex "$_", param_216
.annotate 'line', 100
    get_global $P217, "$?BLOCK"
    get_hll_global $P218, ["PAST"], "Var"
    find_lex $P219, "$_"
    $P220 = $P218."new"("parameter" :named("scope"), $P219 :named("name"))
    $P217."push"($P220)
.annotate 'line', 101
    get_global $P221, "$?BLOCK"
    find_lex $P222, "$_"
    $P223 = $P221."symbol"($P222, "lexical" :named("scope"))
.annotate 'line', 99
    .return ($P223)
.end


.namespace ["mantra";"Actions"]
.sub "method_definition"  :subid("24_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_240
.annotate 'line', 114
    new $P239, 'ExceptionHandler'
    set_addr $P239, control_238
    $P239."handle_types"(57)
    push_eh $P239
    .lex "self", self
    .lex "$/", param_240
.annotate 'line', 115
    get_global $P241, "$?BLOCK"
    unless_null $P241, vivify_120
    new $P241, "Undef"
    set_global "$?BLOCK", $P241
  vivify_120:
.annotate 'line', 116
    get_global $P242, "@?BLOCK"
    unless_null $P242, vivify_121
    $P242 = root_new ['parrot';'ResizablePMCArray']
    set_global "@?BLOCK", $P242
  vivify_121:
.annotate 'line', 118
    new $P243, "Undef"
    .lex "$past", $P243
.annotate 'line', 114
    get_global $P244, "$?BLOCK"
    get_global $P245, "@?BLOCK"
.annotate 'line', 118
    get_global $P246, "$?BLOCK"
    store_lex "$past", $P246
.annotate 'line', 121
    find_lex $P247, "$past"
    find_lex $P248, "$/"
    unless_null $P248, vivify_122
    $P248 = root_new ['parrot';'Hash']
  vivify_122:
    set $P249, $P248["statement_list"]
    unless_null $P249, vivify_123
    new $P249, "Undef"
  vivify_123:
    $P250 = $P249."ast"()
    $P247."push"($P250)
.annotate 'line', 123
    get_global $P251, "@?BLOCK"
    $P251."shift"()
.annotate 'line', 124
    get_global $P252, "@?BLOCK"
    unless_null $P252, vivify_124
    $P252 = root_new ['parrot';'ResizablePMCArray']
  vivify_124:
    set $P253, $P252[0]
    unless_null $P253, vivify_125
    new $P253, "Undef"
  vivify_125:
    set_global "$?BLOCK", $P253
.annotate 'line', 125
    find_lex $P254, "$/"
    find_lex $P255, "$past"
    $P256 = $P254."!make"($P255)
.annotate 'line', 114
    .return ($P256)
  control_238:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P257, exception, "payload"
    .return ($P257)
.end


.namespace ["mantra";"Actions"]
.sub "statement_list"  :subid("25_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_261
.annotate 'line', 128
    .const 'Sub' $P272 = "26_1283117838.46117" 
    capture_lex $P272
    new $P260, 'ExceptionHandler'
    set_addr $P260, control_259
    $P260."handle_types"(57)
    push_eh $P260
    .lex "self", self
    .lex "$/", param_261
.annotate 'line', 129
    new $P262, "Undef"
    .lex "$past", $P262
.annotate 'line', 136
    new $P263, "Undef"
    .lex "$return_statement", $P263
.annotate 'line', 129
    get_hll_global $P264, ["PAST"], "Stmts"
    $P265 = $P264."new"()
    store_lex "$past", $P265
.annotate 'line', 131
    find_lex $P267, "$/"
    unless_null $P267, vivify_126
    $P267 = root_new ['parrot';'Hash']
  vivify_126:
    set $P268, $P267["statement"]
    unless_null $P268, vivify_127
    new $P268, "Undef"
  vivify_127:
    defined $I269, $P268
    unless $I269, for_undef_128
    iter $P266, $P268
    new $P279, 'ExceptionHandler'
    set_addr $P279, loop278_handler
    $P279."handle_types"(64, 66, 65)
    push_eh $P279
  loop278_test:
    unless $P266, loop278_done
    shift $P270, $P266
  loop278_redo:
    .const 'Sub' $P272 = "26_1283117838.46117" 
    capture_lex $P272
    $P272($P270)
  loop278_next:
    goto loop278_test
  loop278_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P280, exception, 'type'
    eq $P280, 64, loop278_next
    eq $P280, 66, loop278_redo
  loop278_done:
    pop_eh 
  for_undef_128:
.annotate 'line', 136
    get_hll_global $P281, ["PAST"], "Op"
    $P282 = $P281."new"("pirop" :named("pasttype"), "return" :named("pirop"))
    store_lex "$return_statement", $P282
.annotate 'line', 137
    find_lex $P283, "$return_statement"
    get_hll_global $P284, ["PAST"], "Var"
    $P285 = $P284."new"("self" :named("name"), "register" :named("scope"))
    $P283."push"($P285)
.annotate 'line', 138
    find_lex $P286, "$past"
    find_lex $P287, "$return_statement"
    $P286."push"($P287)
.annotate 'line', 140
    find_lex $P288, "$/"
    find_lex $P289, "$past"
    $P290 = $P288."!make"($P289)
.annotate 'line', 128
    .return ($P290)
  control_259:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P291, exception, "payload"
    .return ($P291)
.end


.namespace ["mantra";"Actions"]
.sub "_block271"  :anon :subid("26_1283117838.46117") :outer("25_1283117838.46117")
    .param pmc param_273
.annotate 'line', 131
    .lex "$_", param_273
.annotate 'line', 132
    find_lex $P274, "$past"
    find_lex $P275, "$_"
    $P276 = $P275."ast"()
    $P277 = $P274."push"($P276)
.annotate 'line', 131
    .return ($P277)
.end


.namespace ["mantra";"Actions"]
.sub "statement"  :subid("27_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_295
.annotate 'line', 143
    new $P294, 'ExceptionHandler'
    set_addr $P294, control_293
    $P294."handle_types"(57)
    push_eh $P294
    .lex "self", self
    .lex "$/", param_295
.annotate 'line', 144
    new $P296, "Undef"
    .lex "$past", $P296
.annotate 'line', 143
    find_lex $P297, "$past"
.annotate 'line', 145
    find_lex $P299, "$/"
    unless_null $P299, vivify_129
    $P299 = root_new ['parrot';'Hash']
  vivify_129:
    set $P300, $P299["expression"]
    unless_null $P300, vivify_130
    new $P300, "Undef"
  vivify_130:
    unless $P300, if_298_end
.annotate 'line', 146
    find_lex $P301, "$/"
    unless_null $P301, vivify_131
    $P301 = root_new ['parrot';'Hash']
  vivify_131:
    set $P302, $P301["expression"]
    unless_null $P302, vivify_132
    new $P302, "Undef"
  vivify_132:
    $P303 = $P302."ast"()
    store_lex "$past", $P303
  if_298_end:
.annotate 'line', 149
    find_lex $P304, "$/"
    find_lex $P305, "$past"
    $P306 = $P304."!make"($P305)
.annotate 'line', 143
    .return ($P306)
  control_293:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P307, exception, "payload"
    .return ($P307)
.end


.namespace ["mantra";"Actions"]
.sub "return_statement"  :subid("28_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_311
.annotate 'line', 152
    new $P310, 'ExceptionHandler'
    set_addr $P310, control_309
    $P310."handle_types"(57)
    push_eh $P310
    .lex "self", self
    .lex "$/", param_311
.annotate 'line', 153
    new $P312, "Undef"
    .lex "$past", $P312
    get_hll_global $P313, ["PAST"], "Op"
    $P314 = $P313."new"("pirop" :named("pasttype"), "return" :named("pirop"))
    store_lex "$past", $P314
.annotate 'line', 154
    find_lex $P315, "$past"
    find_lex $P316, "$/"
    unless_null $P316, vivify_133
    $P316 = root_new ['parrot';'Hash']
  vivify_133:
    set $P317, $P316["basic_expression"]
    unless_null $P317, vivify_134
    new $P317, "Undef"
  vivify_134:
    $P318 = $P317."ast"()
    $P315."push"($P318)
.annotate 'line', 155
    find_lex $P319, "$/"
    find_lex $P320, "$past"
    $P321 = $P319."!make"($P320)
.annotate 'line', 152
    .return ($P321)
  control_309:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P322, exception, "payload"
    .return ($P322)
.end


.namespace ["mantra";"Actions"]
.sub "basic_expression"  :subid("29_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_326
.annotate 'line', 158
    new $P325, 'ExceptionHandler'
    set_addr $P325, control_324
    $P325."handle_types"(57)
    push_eh $P325
    .lex "self", self
    .lex "$/", param_326
.annotate 'line', 159
    find_lex $P329, "$/"
    unless_null $P329, vivify_135
    $P329 = root_new ['parrot';'Hash']
  vivify_135:
    set $P330, $P329["primitive"]
    unless_null $P330, vivify_136
    new $P330, "Undef"
  vivify_136:
    if $P330, if_328
.annotate 'line', 161
    find_lex $P338, "$/"
    unless_null $P338, vivify_137
    $P338 = root_new ['parrot';'Hash']
  vivify_137:
    set $P339, $P338["message"]
    unless_null $P339, vivify_138
    new $P339, "Undef"
  vivify_138:
    if $P339, if_337
.annotate 'line', 163
    find_lex $P347, "$/"
    unless_null $P347, vivify_139
    $P347 = root_new ['parrot';'Hash']
  vivify_139:
    set $P348, $P347["primary"]
    unless_null $P348, vivify_140
    new $P348, "Undef"
  vivify_140:
    if $P348, if_346
    set $P345, $P348
    goto if_346_end
  if_346:
.annotate 'line', 164
    find_lex $P349, "$/"
    find_lex $P350, "$/"
    unless_null $P350, vivify_141
    $P350 = root_new ['parrot';'Hash']
  vivify_141:
    set $P351, $P350["primary"]
    unless_null $P351, vivify_142
    new $P351, "Undef"
  vivify_142:
    $P352 = $P351."ast"()
    $P353 = $P349."!make"($P352)
.annotate 'line', 163
    set $P345, $P353
  if_346_end:
    set $P336, $P345
.annotate 'line', 161
    goto if_337_end
  if_337:
.annotate 'line', 162
    find_lex $P340, "$/"
    find_lex $P341, "$/"
    unless_null $P341, vivify_143
    $P341 = root_new ['parrot';'Hash']
  vivify_143:
    set $P342, $P341["message"]
    unless_null $P342, vivify_144
    new $P342, "Undef"
  vivify_144:
    $P343 = $P342."ast"()
    $P344 = $P340."!make"($P343)
.annotate 'line', 161
    set $P336, $P344
  if_337_end:
    set $P327, $P336
.annotate 'line', 159
    goto if_328_end
  if_328:
.annotate 'line', 160
    find_lex $P331, "$/"
    find_lex $P332, "$/"
    unless_null $P332, vivify_145
    $P332 = root_new ['parrot';'Hash']
  vivify_145:
    set $P333, $P332["primitive"]
    unless_null $P333, vivify_146
    new $P333, "Undef"
  vivify_146:
    $P334 = $P333."ast"()
    $P335 = $P331."!make"($P334)
.annotate 'line', 159
    set $P327, $P335
  if_328_end:
.annotate 'line', 158
    .return ($P327)
  control_324:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P354, exception, "payload"
    .return ($P354)
.end


.namespace ["mantra";"Actions"]
.sub "expression"  :subid("30_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_358
.annotate 'line', 168
    new $P357, 'ExceptionHandler'
    set_addr $P357, control_356
    $P357."handle_types"(57)
    push_eh $P357
    .lex "self", self
    .lex "$/", param_358
.annotate 'line', 169
    find_lex $P361, "$/"
    unless_null $P361, vivify_147
    $P361 = root_new ['parrot';'Hash']
  vivify_147:
    set $P362, $P361["basic_expression"]
    unless_null $P362, vivify_148
    new $P362, "Undef"
  vivify_148:
    if $P362, if_360
.annotate 'line', 171
    find_lex $P370, "$/"
    unless_null $P370, vivify_149
    $P370 = root_new ['parrot';'Hash']
  vivify_149:
    set $P371, $P370["assignment"]
    unless_null $P371, vivify_150
    new $P371, "Undef"
  vivify_150:
    if $P371, if_369
.annotate 'line', 173
    find_lex $P379, "$/"
    unless_null $P379, vivify_151
    $P379 = root_new ['parrot';'Hash']
  vivify_151:
    set $P380, $P379["return_statement"]
    unless_null $P380, vivify_152
    new $P380, "Undef"
  vivify_152:
    if $P380, if_378
    set $P377, $P380
    goto if_378_end
  if_378:
.annotate 'line', 174
    find_lex $P381, "$/"
    find_lex $P382, "$/"
    unless_null $P382, vivify_153
    $P382 = root_new ['parrot';'Hash']
  vivify_153:
    set $P383, $P382["return_statement"]
    unless_null $P383, vivify_154
    new $P383, "Undef"
  vivify_154:
    $P384 = $P383."ast"()
    $P385 = $P381."!make"($P384)
.annotate 'line', 173
    set $P377, $P385
  if_378_end:
    set $P368, $P377
.annotate 'line', 171
    goto if_369_end
  if_369:
.annotate 'line', 172
    find_lex $P372, "$/"
    find_lex $P373, "$/"
    unless_null $P373, vivify_155
    $P373 = root_new ['parrot';'Hash']
  vivify_155:
    set $P374, $P373["assignment"]
    unless_null $P374, vivify_156
    new $P374, "Undef"
  vivify_156:
    $P375 = $P374."ast"()
    $P376 = $P372."!make"($P375)
.annotate 'line', 171
    set $P368, $P376
  if_369_end:
    set $P359, $P368
.annotate 'line', 169
    goto if_360_end
  if_360:
.annotate 'line', 170
    find_lex $P363, "$/"
    find_lex $P364, "$/"
    unless_null $P364, vivify_157
    $P364 = root_new ['parrot';'Hash']
  vivify_157:
    set $P365, $P364["basic_expression"]
    unless_null $P365, vivify_158
    new $P365, "Undef"
  vivify_158:
    $P366 = $P365."ast"()
    $P367 = $P363."!make"($P366)
.annotate 'line', 169
    set $P359, $P367
  if_360_end:
.annotate 'line', 168
    .return ($P359)
  control_356:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P386, exception, "payload"
    .return ($P386)
.end


.namespace ["mantra";"Actions"]
.sub "message"  :subid("31_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_390
.annotate 'line', 178
    .const 'Sub' $P469 = "35_1283117838.46117" 
    capture_lex $P469
    .const 'Sub' $P442 = "34_1283117838.46117" 
    capture_lex $P442
    .const 'Sub' $P402 = "32_1283117838.46117" 
    capture_lex $P402
    new $P389, 'ExceptionHandler'
    set_addr $P389, control_388
    $P389."handle_types"(57)
    push_eh $P389
    .lex "self", self
    .lex "$/", param_390
.annotate 'line', 179
    new $P391, "Undef"
    .lex "$past", $P391
.annotate 'line', 178
    find_lex $P392, "$past"
.annotate 'line', 182
    find_lex $P394, "$/"
    unless_null $P394, vivify_159
    $P394 = root_new ['parrot';'Hash']
  vivify_159:
    set $P395, $P394["unary_first"]
    unless_null $P395, vivify_160
    new $P395, "Undef"
  vivify_160:
    if $P395, if_393
.annotate 'line', 223
    find_lex $P479, "$/"
    unless_null $P479, vivify_161
    $P479 = root_new ['parrot';'Hash']
  vivify_161:
    set $P480, $P479["binary_first"]
    unless_null $P480, vivify_162
    new $P480, "Undef"
  vivify_162:
    if $P480, if_478
.annotate 'line', 226
    find_lex $P489, "$/"
    unless_null $P489, vivify_163
    $P489 = root_new ['parrot';'Hash']
  vivify_163:
    set $P490, $P489["keyword_first"]
    unless_null $P490, vivify_164
    new $P490, "Undef"
  vivify_164:
    unless $P490, if_488_end
.annotate 'line', 227
    find_lex $P491, "$/"
    unless_null $P491, vivify_165
    $P491 = root_new ['parrot';'Hash']
  vivify_165:
    set $P492, $P491["keyword_first"]
    unless_null $P492, vivify_166
    new $P492, "Undef"
  vivify_166:
    $P493 = $P492."ast"()
    store_lex "$past", $P493
.annotate 'line', 228
    find_lex $P494, "$past"
    find_lex $P495, "$/"
    unless_null $P495, vivify_167
    $P495 = root_new ['parrot';'Hash']
  vivify_167:
    set $P496, $P495["primary"]
    unless_null $P496, vivify_168
    new $P496, "Undef"
  vivify_168:
    $P497 = $P496."ast"()
    $P494."unshift"($P497)
  if_488_end:
.annotate 'line', 226
    goto if_478_end
  if_478:
.annotate 'line', 224
    find_lex $P481, "$/"
    unless_null $P481, vivify_169
    $P481 = root_new ['parrot';'Hash']
  vivify_169:
    set $P482, $P481["binary_first"]
    unless_null $P482, vivify_170
    new $P482, "Undef"
  vivify_170:
    $P483 = $P482."ast"()
    store_lex "$past", $P483
.annotate 'line', 225
    find_lex $P484, "$past"
    find_lex $P485, "$/"
    unless_null $P485, vivify_171
    $P485 = root_new ['parrot';'Hash']
  vivify_171:
    set $P486, $P485["primary"]
    unless_null $P486, vivify_172
    new $P486, "Undef"
  vivify_172:
    $P487 = $P486."ast"()
    $P484."unshift"($P487)
  if_478_end:
.annotate 'line', 223
    goto if_393_end
  if_393:
.annotate 'line', 183
    find_lex $P397, "$/"
    unless_null $P397, vivify_173
    $P397 = root_new ['parrot';'Hash']
  vivify_173:
    set $P398, $P397["unary_first"]
    unless_null $P398, vivify_174
    new $P398, "Undef"
  vivify_174:
    defined $I399, $P398
    unless $I399, for_undef_175
    iter $P396, $P398
    new $P434, 'ExceptionHandler'
    set_addr $P434, loop433_handler
    $P434."handle_types"(64, 66, 65)
    push_eh $P434
  loop433_test:
    unless $P396, loop433_done
    shift $P400, $P396
  loop433_redo:
    .const 'Sub' $P402 = "32_1283117838.46117" 
    capture_lex $P402
    $P402($P400)
  loop433_next:
    goto loop433_test
  loop433_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P435, exception, 'type'
    eq $P435, 64, loop433_next
    eq $P435, 66, loop433_redo
  loop433_done:
    pop_eh 
  for_undef_175:
.annotate 'line', 202
    find_lex $P437, "$/"
    unless_null $P437, vivify_178
    $P437 = root_new ['parrot';'Hash']
  vivify_178:
    set $P438, $P437["binary_second"]
    unless_null $P438, vivify_179
    new $P438, "Undef"
  vivify_179:
    defined $I439, $P438
    unless $I439, for_undef_180
    iter $P436, $P438
    new $P463, 'ExceptionHandler'
    set_addr $P463, loop462_handler
    $P463."handle_types"(64, 66, 65)
    push_eh $P463
  loop462_test:
    unless $P436, loop462_done
    shift $P440, $P436
  loop462_redo:
    .const 'Sub' $P442 = "34_1283117838.46117" 
    capture_lex $P442
    $P442($P440)
  loop462_next:
    goto loop462_test
  loop462_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P464, exception, 'type'
    eq $P464, 64, loop462_next
    eq $P464, 66, loop462_redo
  loop462_done:
    pop_eh 
  for_undef_180:
.annotate 'line', 215
    find_lex $P466, "$/"
    unless_null $P466, vivify_185
    $P466 = root_new ['parrot';'Hash']
  vivify_185:
    set $P467, $P466["keyword_third"]
    unless_null $P467, vivify_186
    new $P467, "Undef"
  vivify_186:
    unless $P467, if_465_end
    .const 'Sub' $P469 = "35_1283117838.46117" 
    capture_lex $P469
    $P469()
  if_465_end:
  if_393_end:
.annotate 'line', 230
    find_lex $P498, "$/"
    find_lex $P499, "$past"
    $P500 = $P498."!make"($P499)
.annotate 'line', 178
    .return ($P500)
  control_388:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P501, exception, "payload"
    .return ($P501)
.end


.namespace ["mantra";"Actions"]
.sub "_block401"  :anon :subid("32_1283117838.46117") :outer("31_1283117838.46117")
    .param pmc param_404
.annotate 'line', 183
    .const 'Sub' $P412 = "33_1283117838.46117" 
    capture_lex $P412
.annotate 'line', 184
    new $P403, "Undef"
    .lex "$message", $P403
    .lex "$_", param_404
    get_hll_global $P405, ["PAST"], "Val"
    find_lex $P406, "$_"
    $P407 = $P405."new"("String" :named("returns"), $P406 :named("value"))
    store_lex "$message", $P407
.annotate 'line', 186
    find_lex $P410, "$past"
    if $P410, if_409
.annotate 'line', 194
    get_hll_global $P423, ["PAST"], "Op"
    find_lex $P424, "$/"
    $P425 = $P423."new"("!call_method" :named("name"), "call" :named("pasttype"), $P424 :named("node"))
    store_lex "$past", $P425
.annotate 'line', 197
    find_lex $P426, "$past"
    find_lex $P427, "$/"
    unless_null $P427, vivify_176
    $P427 = root_new ['parrot';'Hash']
  vivify_176:
    set $P428, $P427["primary"]
    unless_null $P428, vivify_177
    new $P428, "Undef"
  vivify_177:
    $P429 = $P428."ast"()
    $P426."push"($P429)
.annotate 'line', 198
    find_lex $P430, "$past"
    find_lex $P431, "$message"
    $P432 = $P430."push"($P431)
.annotate 'line', 193
    set $P408, $P432
.annotate 'line', 186
    goto if_409_end
  if_409:
    .const 'Sub' $P412 = "33_1283117838.46117" 
    capture_lex $P412
    $P422 = $P412()
    set $P408, $P422
  if_409_end:
.annotate 'line', 183
    .return ($P408)
.end


.namespace ["mantra";"Actions"]
.sub "_block411"  :anon :subid("33_1283117838.46117") :outer("32_1283117838.46117")
.annotate 'line', 187
    new $P413, "Undef"
    .lex "$next", $P413
    get_hll_global $P414, ["PAST"], "Op"
    find_lex $P415, "$/"
    $P416 = $P414."new"("!call_method" :named("name"), "call" :named("pasttype"), $P415 :named("node"))
    store_lex "$next", $P416
.annotate 'line', 190
    find_lex $P417, "$next"
    find_lex $P418, "$past"
    $P417."push"($P418)
.annotate 'line', 191
    find_lex $P419, "$next"
    find_lex $P420, "$message"
    $P419."push"($P420)
.annotate 'line', 192
    find_lex $P421, "$next"
    store_lex "$past", $P421
.annotate 'line', 186
    .return ($P421)
.end


.namespace ["mantra";"Actions"]
.sub "_block441"  :anon :subid("34_1283117838.46117") :outer("31_1283117838.46117")
    .param pmc param_445
.annotate 'line', 203
    new $P443, "Undef"
    .lex "$message", $P443
.annotate 'line', 206
    new $P444, "Undef"
    .lex "$next", $P444
    .lex "$_", param_445
.annotate 'line', 203
    get_hll_global $P446, ["PAST"], "Val"
    find_lex $P447, "$_"
    unless_null $P447, vivify_181
    $P447 = root_new ['parrot';'Hash']
  vivify_181:
    set $P448, $P447["method_name"]
    unless_null $P448, vivify_182
    new $P448, "Undef"
  vivify_182:
    $P449 = $P446."new"("String" :named("returns"), $P448 :named("value"))
    store_lex "$message", $P449
.annotate 'line', 206
    get_hll_global $P450, ["PAST"], "Op"
    find_lex $P451, "$/"
    $P452 = $P450."new"("!call_method" :named("name"), "call" :named("pasttype"), $P451 :named("node"))
    store_lex "$next", $P452
.annotate 'line', 209
    find_lex $P453, "$next"
    find_lex $P454, "$past"
    $P453."push"($P454)
.annotate 'line', 210
    find_lex $P455, "$next"
    find_lex $P456, "$message"
    $P455."push"($P456)
.annotate 'line', 211
    find_lex $P457, "$next"
    find_lex $P458, "$_"
    unless_null $P458, vivify_183
    $P458 = root_new ['parrot';'Hash']
  vivify_183:
    set $P459, $P458["primary"]
    unless_null $P459, vivify_184
    new $P459, "Undef"
  vivify_184:
    $P460 = $P459."ast"()
    $P457."push"($P460)
.annotate 'line', 212
    find_lex $P461, "$next"
    store_lex "$past", $P461
.annotate 'line', 202
    .return ($P461)
.end


.namespace ["mantra";"Actions"]
.sub "_block468"  :anon :subid("35_1283117838.46117") :outer("31_1283117838.46117")
.annotate 'line', 216
    new $P470, "Undef"
    .lex "$next", $P470
    find_lex $P471, "$/"
    unless_null $P471, vivify_187
    $P471 = root_new ['parrot';'Hash']
  vivify_187:
    set $P472, $P471["keyword_third"]
    unless_null $P472, vivify_188
    $P472 = root_new ['parrot';'ResizablePMCArray']
  vivify_188:
    set $P473, $P472[0]
    unless_null $P473, vivify_189
    new $P473, "Undef"
  vivify_189:
    $P474 = $P473."ast"()
    store_lex "$next", $P474
.annotate 'line', 217
    find_lex $P475, "$next"
    find_lex $P476, "$past"
    $P475."unshift"($P476)
.annotate 'line', 218
    find_lex $P477, "$next"
    store_lex "$past", $P477
.annotate 'line', 215
    .return ($P477)
.end


.namespace ["mantra";"Actions"]
.sub "binary_message"  :subid("36_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_505
.annotate 'line', 233
    .const 'Sub' $P515 = "37_1283117838.46117" 
    capture_lex $P515
    new $P504, 'ExceptionHandler'
    set_addr $P504, control_503
    $P504."handle_types"(57)
    push_eh $P504
    .lex "self", self
    .lex "$/", param_505
.annotate 'line', 234
    new $P506, "Undef"
    .lex "$argument", $P506
.annotate 'line', 259
    new $P507, "Undef"
    .lex "$past", $P507
.annotate 'line', 233
    find_lex $P508, "$argument"
.annotate 'line', 236
    find_lex $P510, "$/"
    unless_null $P510, vivify_190
    $P510 = root_new ['parrot';'Hash']
  vivify_190:
    set $P511, $P510["unary_method"]
    unless_null $P511, vivify_191
    new $P511, "Undef"
  vivify_191:
    defined $I512, $P511
    unless $I512, for_undef_192
    iter $P509, $P511
    new $P547, 'ExceptionHandler'
    set_addr $P547, loop546_handler
    $P547."handle_types"(64, 66, 65)
    push_eh $P547
  loop546_test:
    unless $P509, loop546_done
    shift $P513, $P509
  loop546_redo:
    .const 'Sub' $P515 = "37_1283117838.46117" 
    capture_lex $P515
    $P515($P513)
  loop546_next:
    goto loop546_test
  loop546_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P548, exception, 'type'
    eq $P548, 64, loop546_next
    eq $P548, 66, loop546_redo
  loop546_done:
    pop_eh 
  for_undef_192:
.annotate 'line', 255
    find_lex $P550, "$argument"
    if $P550, unless_549_end
.annotate 'line', 256
    find_lex $P551, "$/"
    unless_null $P551, vivify_195
    $P551 = root_new ['parrot';'Hash']
  vivify_195:
    set $P552, $P551["primary"]
    unless_null $P552, vivify_196
    new $P552, "Undef"
  vivify_196:
    $P553 = $P552."ast"()
    store_lex "$argument", $P553
  unless_549_end:
.annotate 'line', 259
    get_hll_global $P554, ["PAST"], "Op"
    find_lex $P555, "$/"
    $P556 = $P554."new"("!call_method" :named("name"), "call" :named("pasttype"), $P555 :named("node"))
    store_lex "$past", $P556
.annotate 'line', 262
    find_lex $P557, "$past"
    get_hll_global $P558, ["PAST"], "Val"
    find_lex $P559, "$/"
    unless_null $P559, vivify_197
    $P559 = root_new ['parrot';'Hash']
  vivify_197:
    set $P560, $P559["method_name"]
    unless_null $P560, vivify_198
    new $P560, "Undef"
  vivify_198:
    $P561 = $P558."new"("String" :named("returns"), $P560 :named("value"))
    $P557."push"($P561)
.annotate 'line', 264
    find_lex $P562, "$past"
    find_lex $P563, "$argument"
    $P562."push"($P563)
.annotate 'line', 265
    find_lex $P564, "$/"
    find_lex $P565, "$past"
    $P566 = $P564."!make"($P565)
.annotate 'line', 233
    .return ($P566)
  control_503:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P567, exception, "payload"
    .return ($P567)
.end


.namespace ["mantra";"Actions"]
.sub "_block514"  :anon :subid("37_1283117838.46117") :outer("36_1283117838.46117")
    .param pmc param_517
.annotate 'line', 236
    .const 'Sub' $P525 = "38_1283117838.46117" 
    capture_lex $P525
.annotate 'line', 237
    new $P516, "Undef"
    .lex "$message", $P516
    .lex "$_", param_517
    get_hll_global $P518, ["PAST"], "Val"
    find_lex $P519, "$_"
    $P520 = $P518."new"("String" :named("returns"), $P519 :named("value"))
    store_lex "$message", $P520
.annotate 'line', 239
    find_lex $P523, "$argument"
    if $P523, if_522
.annotate 'line', 247
    get_hll_global $P536, ["PAST"], "Op"
    find_lex $P537, "$/"
    $P538 = $P536."new"("!call_method" :named("name"), "call" :named("pasttype"), $P537 :named("node"))
    store_lex "$argument", $P538
.annotate 'line', 250
    find_lex $P539, "$argument"
    find_lex $P540, "$/"
    unless_null $P540, vivify_193
    $P540 = root_new ['parrot';'Hash']
  vivify_193:
    set $P541, $P540["primary"]
    unless_null $P541, vivify_194
    new $P541, "Undef"
  vivify_194:
    $P542 = $P541."ast"()
    $P539."push"($P542)
.annotate 'line', 251
    find_lex $P543, "$argument"
    find_lex $P544, "$message"
    $P545 = $P543."push"($P544)
.annotate 'line', 246
    set $P521, $P545
.annotate 'line', 239
    goto if_522_end
  if_522:
    .const 'Sub' $P525 = "38_1283117838.46117" 
    capture_lex $P525
    $P535 = $P525()
    set $P521, $P535
  if_522_end:
.annotate 'line', 236
    .return ($P521)
.end


.namespace ["mantra";"Actions"]
.sub "_block524"  :anon :subid("38_1283117838.46117") :outer("37_1283117838.46117")
.annotate 'line', 240
    new $P526, "Undef"
    .lex "$next", $P526
    get_hll_global $P527, ["PAST"], "Op"
    find_lex $P528, "$/"
    $P529 = $P527."new"("!call_method" :named("name"), "call" :named("pasttype"), $P528 :named("node"))
    store_lex "$next", $P529
.annotate 'line', 243
    find_lex $P530, "$next"
    find_lex $P531, "$argument"
    $P530."push"($P531)
.annotate 'line', 244
    find_lex $P532, "$next"
    find_lex $P533, "$message"
    $P532."push"($P533)
.annotate 'line', 245
    find_lex $P534, "$next"
    store_lex "$argument", $P534
.annotate 'line', 239
    .return ($P534)
.end


.namespace ["mantra";"Actions"]
.sub "keyword_message"  :subid("39_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_571
.annotate 'line', 269
    .const 'Sub' $P590 = "40_1283117838.46117" 
    capture_lex $P590
    new $P570, 'ExceptionHandler'
    set_addr $P570, control_569
    $P570."handle_types"(57)
    push_eh $P570
    .lex "self", self
    .lex "$/", param_571
.annotate 'line', 270
    new $P572, "Undef"
    .lex "$past", $P572
    get_hll_global $P573, ["PAST"], "Op"
    find_lex $P574, "$/"
    $P575 = $P573."new"("!call_method" :named("name"), "call" :named("pasttype"), $P574 :named("node"))
    store_lex "$past", $P575
.annotate 'line', 273
    find_lex $P576, "$past"
    get_hll_global $P577, ["PAST"], "Val"
.annotate 'line', 274
    find_lex $P578, "$/"
    unless_null $P578, vivify_199
    $P578 = root_new ['parrot';'Hash']
  vivify_199:
    set $P579, $P578["method_name"]
    unless_null $P579, vivify_200
    new $P579, "Undef"
  vivify_200:
    join $S580, ":", $P579
    new $P581, 'String'
    set $P581, $S580
    concat $P582, $P581, ":"
    $P583 = $P577."new"("String" :named("returns"), $P582 :named("value"))
.annotate 'line', 273
    $P576."push"($P583)
.annotate 'line', 275
    find_lex $P585, "$/"
    unless_null $P585, vivify_201
    $P585 = root_new ['parrot';'Hash']
  vivify_201:
    set $P586, $P585["keyword_argument"]
    unless_null $P586, vivify_202
    new $P586, "Undef"
  vivify_202:
    defined $I587, $P586
    unless $I587, for_undef_203
    iter $P584, $P586
    new $P597, 'ExceptionHandler'
    set_addr $P597, loop596_handler
    $P597."handle_types"(64, 66, 65)
    push_eh $P597
  loop596_test:
    unless $P584, loop596_done
    shift $P588, $P584
  loop596_redo:
    .const 'Sub' $P590 = "40_1283117838.46117" 
    capture_lex $P590
    $P590($P588)
  loop596_next:
    goto loop596_test
  loop596_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P598, exception, 'type'
    eq $P598, 64, loop596_next
    eq $P598, 66, loop596_redo
  loop596_done:
    pop_eh 
  for_undef_203:
.annotate 'line', 278
    find_lex $P599, "$/"
    find_lex $P600, "$past"
    $P601 = $P599."!make"($P600)
.annotate 'line', 269
    .return ($P601)
  control_569:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P602, exception, "payload"
    .return ($P602)
.end


.namespace ["mantra";"Actions"]
.sub "_block589"  :anon :subid("40_1283117838.46117") :outer("39_1283117838.46117")
    .param pmc param_591
.annotate 'line', 275
    .lex "$_", param_591
.annotate 'line', 276
    find_lex $P592, "$past"
    find_lex $P593, "$_"
    $P594 = $P593."ast"()
    $P595 = $P592."push"($P594)
.annotate 'line', 275
    .return ($P595)
.end


.namespace ["mantra";"Actions"]
.sub "keyword_argument"  :subid("41_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_606
.annotate 'line', 281
    .const 'Sub' $P662 = "44_1283117838.46117" 
    capture_lex $P662
    .const 'Sub' $P616 = "42_1283117838.46117" 
    capture_lex $P616
    new $P605, 'ExceptionHandler'
    set_addr $P605, control_604
    $P605."handle_types"(57)
    push_eh $P605
    .lex "self", self
    .lex "$/", param_606
.annotate 'line', 282
    new $P607, "Undef"
    .lex "$primary", $P607
.annotate 'line', 306
    new $P608, "Undef"
    .lex "$past", $P608
.annotate 'line', 281
    find_lex $P609, "$primary"
.annotate 'line', 283
    find_lex $P611, "$/"
    unless_null $P611, vivify_204
    $P611 = root_new ['parrot';'Hash']
  vivify_204:
    set $P612, $P611["unary_method"]
    unless_null $P612, vivify_205
    new $P612, "Undef"
  vivify_205:
    defined $I613, $P612
    unless $I613, for_undef_206
    iter $P610, $P612
    new $P648, 'ExceptionHandler'
    set_addr $P648, loop647_handler
    $P648."handle_types"(64, 66, 65)
    push_eh $P648
  loop647_test:
    unless $P610, loop647_done
    shift $P614, $P610
  loop647_redo:
    .const 'Sub' $P616 = "42_1283117838.46117" 
    capture_lex $P616
    $P616($P614)
  loop647_next:
    goto loop647_test
  loop647_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P649, exception, 'type'
    eq $P649, 64, loop647_next
    eq $P649, 66, loop647_redo
  loop647_done:
    pop_eh 
  for_undef_206:
.annotate 'line', 302
    find_lex $P651, "$primary"
    if $P651, unless_650_end
.annotate 'line', 303
    find_lex $P652, "$/"
    unless_null $P652, vivify_209
    $P652 = root_new ['parrot';'Hash']
  vivify_209:
    set $P653, $P652["primary"]
    unless_null $P653, vivify_210
    new $P653, "Undef"
  vivify_210:
    $P654 = $P653."ast"()
    store_lex "$primary", $P654
  unless_650_end:
.annotate 'line', 302
    find_lex $P655, "$past"
.annotate 'line', 308
    find_lex $P657, "$/"
    unless_null $P657, vivify_211
    $P657 = root_new ['parrot';'Hash']
  vivify_211:
    set $P658, $P657["binary_message"]
    unless_null $P658, vivify_212
    new $P658, "Undef"
  vivify_212:
    defined $I659, $P658
    unless $I659, for_undef_213
    iter $P656, $P658
    new $P670, 'ExceptionHandler'
    set_addr $P670, loop669_handler
    $P670."handle_types"(64, 66, 65)
    push_eh $P670
  loop669_test:
    unless $P656, loop669_done
    shift $P660, $P656
  loop669_redo:
    .const 'Sub' $P662 = "44_1283117838.46117" 
    capture_lex $P662
    $P662($P660)
  loop669_next:
    goto loop669_test
  loop669_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P671, exception, 'type'
    eq $P671, 64, loop669_next
    eq $P671, 66, loop669_redo
  loop669_done:
    pop_eh 
  for_undef_213:
.annotate 'line', 314
    find_lex $P674, "$past"
    if $P674, if_673
.annotate 'line', 317
    find_lex $P678, "$/"
    find_lex $P679, "$primary"
    $P680 = $P678."!make"($P679)
.annotate 'line', 316
    set $P672, $P680
.annotate 'line', 314
    goto if_673_end
  if_673:
.annotate 'line', 315
    find_lex $P675, "$/"
    find_lex $P676, "$past"
    $P677 = $P675."!make"($P676)
.annotate 'line', 314
    set $P672, $P677
  if_673_end:
.annotate 'line', 281
    .return ($P672)
  control_604:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P681, exception, "payload"
    .return ($P681)
.end


.namespace ["mantra";"Actions"]
.sub "_block615"  :anon :subid("42_1283117838.46117") :outer("41_1283117838.46117")
    .param pmc param_618
.annotate 'line', 283
    .const 'Sub' $P626 = "43_1283117838.46117" 
    capture_lex $P626
.annotate 'line', 284
    new $P617, "Undef"
    .lex "$message", $P617
    .lex "$_", param_618
    get_hll_global $P619, ["PAST"], "Val"
    find_lex $P620, "$_"
    $P621 = $P619."new"("String" :named("returns"), $P620 :named("value"))
    store_lex "$message", $P621
.annotate 'line', 286
    find_lex $P624, "$primary"
    if $P624, if_623
.annotate 'line', 294
    get_hll_global $P637, ["PAST"], "Op"
    find_lex $P638, "$/"
    $P639 = $P637."new"("!call_method" :named("name"), "call" :named("pasttype"), $P638 :named("node"))
    store_lex "$primary", $P639
.annotate 'line', 297
    find_lex $P640, "$primary"
    find_lex $P641, "$/"
    unless_null $P641, vivify_207
    $P641 = root_new ['parrot';'Hash']
  vivify_207:
    set $P642, $P641["primary"]
    unless_null $P642, vivify_208
    new $P642, "Undef"
  vivify_208:
    $P643 = $P642."ast"()
    $P640."push"($P643)
.annotate 'line', 298
    find_lex $P644, "$primary"
    find_lex $P645, "$message"
    $P646 = $P644."push"($P645)
.annotate 'line', 293
    set $P622, $P646
.annotate 'line', 286
    goto if_623_end
  if_623:
    .const 'Sub' $P626 = "43_1283117838.46117" 
    capture_lex $P626
    $P636 = $P626()
    set $P622, $P636
  if_623_end:
.annotate 'line', 283
    .return ($P622)
.end


.namespace ["mantra";"Actions"]
.sub "_block625"  :anon :subid("43_1283117838.46117") :outer("42_1283117838.46117")
.annotate 'line', 287
    new $P627, "Undef"
    .lex "$next", $P627
    get_hll_global $P628, ["PAST"], "Op"
    find_lex $P629, "$/"
    $P630 = $P628."new"("!call_method" :named("name"), "call" :named("pasttype"), $P629 :named("node"))
    store_lex "$next", $P630
.annotate 'line', 290
    find_lex $P631, "$next"
    find_lex $P632, "$primary"
    $P631."push"($P632)
.annotate 'line', 291
    find_lex $P633, "$next"
    find_lex $P634, "$message"
    $P633."push"($P634)
.annotate 'line', 292
    find_lex $P635, "$next"
    store_lex "$primary", $P635
.annotate 'line', 286
    .return ($P635)
.end


.namespace ["mantra";"Actions"]
.sub "_block661"  :anon :subid("44_1283117838.46117") :outer("41_1283117838.46117")
    .param pmc param_663
.annotate 'line', 308
    .lex "$_", param_663
.annotate 'line', 309
    find_lex $P664, "$_"
    $P665 = $P664."ast"()
    store_lex "$past", $P665
.annotate 'line', 310
    find_lex $P666, "$past"
    find_lex $P667, "$primary"
    $P666."unshift"($P667)
.annotate 'line', 311
    find_lex $P668, "$past"
    store_lex "$primary", $P668
.annotate 'line', 308
    .return ($P668)
.end


.namespace ["mantra";"Actions"]
.sub "primary"  :subid("45_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_685
.annotate 'line', 321
    new $P684, 'ExceptionHandler'
    set_addr $P684, control_683
    $P684."handle_types"(57)
    push_eh $P684
    .lex "self", self
    .lex "$/", param_685
.annotate 'line', 322
    find_lex $P688, "$/"
    unless_null $P688, vivify_214
    $P688 = root_new ['parrot';'Hash']
  vivify_214:
    set $P689, $P688["variable"]
    unless_null $P689, vivify_215
    new $P689, "Undef"
  vivify_215:
    if $P689, if_687
.annotate 'line', 324
    find_lex $P697, "$/"
    unless_null $P697, vivify_216
    $P697 = root_new ['parrot';'Hash']
  vivify_216:
    set $P698, $P697["literal"]
    unless_null $P698, vivify_217
    new $P698, "Undef"
  vivify_217:
    if $P698, if_696
.annotate 'line', 326
    find_lex $P706, "$/"
    unless_null $P706, vivify_218
    $P706 = root_new ['parrot';'Hash']
  vivify_218:
    set $P707, $P706["basic_expression"]
    unless_null $P707, vivify_219
    new $P707, "Undef"
  vivify_219:
    if $P707, if_705
    set $P704, $P707
    goto if_705_end
  if_705:
.annotate 'line', 327
    find_lex $P708, "$/"
    find_lex $P709, "$/"
    unless_null $P709, vivify_220
    $P709 = root_new ['parrot';'Hash']
  vivify_220:
    set $P710, $P709["basic_expression"]
    unless_null $P710, vivify_221
    new $P710, "Undef"
  vivify_221:
    $P711 = $P710."ast"()
    $P712 = $P708."!make"($P711)
.annotate 'line', 326
    set $P704, $P712
  if_705_end:
    set $P695, $P704
.annotate 'line', 324
    goto if_696_end
  if_696:
.annotate 'line', 325
    find_lex $P699, "$/"
    find_lex $P700, "$/"
    unless_null $P700, vivify_222
    $P700 = root_new ['parrot';'Hash']
  vivify_222:
    set $P701, $P700["literal"]
    unless_null $P701, vivify_223
    new $P701, "Undef"
  vivify_223:
    $P702 = $P701."ast"()
    $P703 = $P699."!make"($P702)
.annotate 'line', 324
    set $P695, $P703
  if_696_end:
    set $P686, $P695
.annotate 'line', 322
    goto if_687_end
  if_687:
.annotate 'line', 323
    find_lex $P690, "$/"
    find_lex $P691, "$/"
    unless_null $P691, vivify_224
    $P691 = root_new ['parrot';'Hash']
  vivify_224:
    set $P692, $P691["variable"]
    unless_null $P692, vivify_225
    new $P692, "Undef"
  vivify_225:
    $P693 = $P692."ast"()
    $P694 = $P690."!make"($P693)
.annotate 'line', 322
    set $P686, $P694
  if_687_end:
.annotate 'line', 321
    .return ($P686)
  control_683:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P713, exception, "payload"
    .return ($P713)
.end


.namespace ["mantra";"Actions"]
.sub "variable"  :subid("46_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_717
.annotate 'line', 331
    new $P716, 'ExceptionHandler'
    set_addr $P716, control_715
    $P716."handle_types"(57)
    push_eh $P716
    .lex "self", self
    .lex "$/", param_717
.annotate 'line', 332
    find_lex $P720, "$/"
    unless_null $P720, vivify_226
    $P720 = root_new ['parrot';'Hash']
  vivify_226:
    set $P721, $P720["pseudo_variable_self"]
    unless_null $P721, vivify_227
    new $P721, "Undef"
  vivify_227:
    if $P721, if_719
.annotate 'line', 334
    find_lex $P729, "$/"
    unless_null $P729, vivify_228
    $P729 = root_new ['parrot';'Hash']
  vivify_228:
    set $P730, $P729["writable_variable"]
    unless_null $P730, vivify_229
    new $P730, "Undef"
  vivify_229:
    if $P730, if_728
    set $P727, $P730
    goto if_728_end
  if_728:
.annotate 'line', 335
    find_lex $P731, "$/"
    find_lex $P732, "$/"
    unless_null $P732, vivify_230
    $P732 = root_new ['parrot';'Hash']
  vivify_230:
    set $P733, $P732["writable_variable"]
    unless_null $P733, vivify_231
    new $P733, "Undef"
  vivify_231:
    $P734 = $P733."ast"()
    $P735 = $P731."!make"($P734)
.annotate 'line', 334
    set $P727, $P735
  if_728_end:
    set $P718, $P727
.annotate 'line', 332
    goto if_719_end
  if_719:
.annotate 'line', 333
    find_lex $P722, "$/"
    find_lex $P723, "$/"
    unless_null $P723, vivify_232
    $P723 = root_new ['parrot';'Hash']
  vivify_232:
    set $P724, $P723["pseudo_variable_self"]
    unless_null $P724, vivify_233
    new $P724, "Undef"
  vivify_233:
    $P725 = $P724."ast"()
    $P726 = $P722."!make"($P725)
.annotate 'line', 332
    set $P718, $P726
  if_719_end:
.annotate 'line', 331
    .return ($P718)
  control_715:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P736, exception, "payload"
    .return ($P736)
.end


.namespace ["mantra";"Actions"]
.sub "writable_variable"  :subid("47_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_740
.annotate 'line', 339
    new $P739, 'ExceptionHandler'
    set_addr $P739, control_738
    $P739."handle_types"(57)
    push_eh $P739
    .lex "self", self
    .lex "$/", param_740
.annotate 'line', 340
    find_lex $P743, "$/"
    unless_null $P743, vivify_234
    $P743 = root_new ['parrot';'Hash']
  vivify_234:
    set $P744, $P743["instance_variable"]
    unless_null $P744, vivify_235
    new $P744, "Undef"
  vivify_235:
    if $P744, if_742
.annotate 'line', 342
    find_lex $P752, "$/"
    unless_null $P752, vivify_236
    $P752 = root_new ['parrot';'Hash']
  vivify_236:
    set $P753, $P752["local_variable"]
    unless_null $P753, vivify_237
    new $P753, "Undef"
  vivify_237:
    if $P753, if_751
    set $P750, $P753
    goto if_751_end
  if_751:
.annotate 'line', 343
    find_lex $P754, "$/"
    find_lex $P755, "$/"
    unless_null $P755, vivify_238
    $P755 = root_new ['parrot';'Hash']
  vivify_238:
    set $P756, $P755["local_variable"]
    unless_null $P756, vivify_239
    new $P756, "Undef"
  vivify_239:
    $P757 = $P756."ast"()
    $P758 = $P754."!make"($P757)
.annotate 'line', 342
    set $P750, $P758
  if_751_end:
    set $P741, $P750
.annotate 'line', 340
    goto if_742_end
  if_742:
.annotate 'line', 341
    find_lex $P745, "$/"
    find_lex $P746, "$/"
    unless_null $P746, vivify_240
    $P746 = root_new ['parrot';'Hash']
  vivify_240:
    set $P747, $P746["instance_variable"]
    unless_null $P747, vivify_241
    new $P747, "Undef"
  vivify_241:
    $P748 = $P747."ast"()
    $P749 = $P745."!make"($P748)
.annotate 'line', 340
    set $P741, $P749
  if_742_end:
.annotate 'line', 339
    .return ($P741)
  control_738:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P759, exception, "payload"
    .return ($P759)
.end


.namespace ["mantra";"Actions"]
.sub "instance_variable"  :subid("48_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_763
.annotate 'line', 347
    new $P762, 'ExceptionHandler'
    set_addr $P762, control_761
    $P762."handle_types"(57)
    push_eh $P762
    .lex "self", self
    .lex "$/", param_763
.annotate 'line', 348
    get_global $P764, "%ATTRIBUTES"
    unless_null $P764, vivify_242
    $P764 = root_new ['parrot';'Hash']
    set_global "%ATTRIBUTES", $P764
  vivify_242:
.annotate 'line', 350
    new $P765, "Undef"
    .lex "$past", $P765
.annotate 'line', 347
    get_global $P766, "%ATTRIBUTES"
.annotate 'line', 349
    new $P767, "Integer"
    assign $P767, 1
    find_lex $P768, "$/"
    unless_null $P768, vivify_243
    $P768 = root_new ['parrot';'Hash']
  vivify_243:
    set $P769, $P768["ident"]
    unless_null $P769, vivify_244
    new $P769, "Undef"
  vivify_244:
    set $S770, $P769
    get_global $P771, "%ATTRIBUTES"
    unless_null $P771, vivify_245
    $P771 = root_new ['parrot';'Hash']
    set_global "%ATTRIBUTES", $P771
  vivify_245:
    set $P771[$S770], $P767
.annotate 'line', 350
    get_hll_global $P772, ["PAST"], "Var"
    find_lex $P773, "$/"
    unless_null $P773, vivify_246
    $P773 = root_new ['parrot';'Hash']
  vivify_246:
    set $P774, $P773["ident"]
    unless_null $P774, vivify_247
    new $P774, "Undef"
  vivify_247:
    set $S775, $P774
    find_lex $P776, "$/"
    $P777 = $P772."new"($S775 :named("name"), "attribute" :named("scope"), $P776 :named("node"))
    store_lex "$past", $P777
.annotate 'line', 351
    find_lex $P778, "$/"
    find_lex $P779, "$past"
    $P780 = $P778."!make"($P779)
.annotate 'line', 347
    .return ($P780)
  control_761:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P781, exception, "payload"
    .return ($P781)
.end


.namespace ["mantra";"Actions"]
.sub "pseudo_variable_self"  :subid("49_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_785
.annotate 'line', 354
    new $P784, 'ExceptionHandler'
    set_addr $P784, control_783
    $P784."handle_types"(57)
    push_eh $P784
    .lex "self", self
    .lex "$/", param_785
.annotate 'line', 355
    find_lex $P786, "$/"
    get_hll_global $P787, ["PAST"], "Var"
    $P788 = $P787."new"("self" :named("name"), "register" :named("scope"))
    $P789 = $P786."!make"($P788)
.annotate 'line', 354
    .return ($P789)
  control_783:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P790, exception, "payload"
    .return ($P790)
.end


.namespace ["mantra";"Actions"]
.sub "literal"  :subid("50_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_794
.annotate 'line', 358
    new $P793, 'ExceptionHandler'
    set_addr $P793, control_792
    $P793."handle_types"(57)
    push_eh $P793
    .lex "self", self
    .lex "$/", param_794
.annotate 'line', 359
    new $P795, "Undef"
    .lex "$past", $P795
.annotate 'line', 358
    find_lex $P796, "$past"
.annotate 'line', 361
    find_lex $P798, "$/"
    unless_null $P798, vivify_248
    $P798 = root_new ['parrot';'Hash']
  vivify_248:
    set $P799, $P798["string_constant"]
    unless_null $P799, vivify_249
    new $P799, "Undef"
  vivify_249:
    unless $P799, if_797_end
.annotate 'line', 362
    find_lex $P800, "$/"
    unless_null $P800, vivify_250
    $P800 = root_new ['parrot';'Hash']
  vivify_250:
    set $P801, $P800["string_constant"]
    unless_null $P801, vivify_251
    new $P801, "Undef"
  vivify_251:
    $P802 = $P801."ast"()
    store_lex "$past", $P802
  if_797_end:
.annotate 'line', 365
    find_lex $P803, "$/"
    find_lex $P804, "$past"
    $P805 = $P803."!make"($P804)
.annotate 'line', 358
    .return ($P805)
  control_792:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P806, exception, "payload"
    .return ($P806)
.end


.namespace ["mantra";"Actions"]
.sub "primitive"  :subid("51_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_810
.annotate 'line', 368
    .const 'Sub' $P822 = "52_1283117838.46117" 
    capture_lex $P822
    new $P809, 'ExceptionHandler'
    set_addr $P809, control_808
    $P809."handle_types"(57)
    push_eh $P809
    .lex "self", self
    .lex "$/", param_810
.annotate 'line', 369
    new $P811, "Undef"
    .lex "$past", $P811
    get_hll_global $P812, ["PAST"], "Op"
    find_lex $P813, "$/"
    unless_null $P813, vivify_252
    $P813 = root_new ['parrot';'Hash']
  vivify_252:
    set $P814, $P813["identifier"]
    unless_null $P814, vivify_253
    new $P814, "Undef"
  vivify_253:
    $P815 = $P812."new"($P814 :named("name"))
    store_lex "$past", $P815
.annotate 'line', 370
    find_lex $P817, "$/"
    unless_null $P817, vivify_254
    $P817 = root_new ['parrot';'Hash']
  vivify_254:
    set $P818, $P817["primary"]
    unless_null $P818, vivify_255
    new $P818, "Undef"
  vivify_255:
    defined $I819, $P818
    unless $I819, for_undef_256
    iter $P816, $P818
    new $P829, 'ExceptionHandler'
    set_addr $P829, loop828_handler
    $P829."handle_types"(64, 66, 65)
    push_eh $P829
  loop828_test:
    unless $P816, loop828_done
    shift $P820, $P816
  loop828_redo:
    .const 'Sub' $P822 = "52_1283117838.46117" 
    capture_lex $P822
    $P822($P820)
  loop828_next:
    goto loop828_test
  loop828_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P830, exception, 'type'
    eq $P830, 64, loop828_next
    eq $P830, 66, loop828_redo
  loop828_done:
    pop_eh 
  for_undef_256:
.annotate 'line', 373
    find_lex $P831, "$/"
    find_lex $P832, "$past"
    $P833 = $P831."!make"($P832)
.annotate 'line', 368
    .return ($P833)
  control_808:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P834, exception, "payload"
    .return ($P834)
.end


.namespace ["mantra";"Actions"]
.sub "_block821"  :anon :subid("52_1283117838.46117") :outer("51_1283117838.46117")
    .param pmc param_823
.annotate 'line', 370
    .lex "$_", param_823
.annotate 'line', 371
    find_lex $P824, "$past"
    find_lex $P825, "$_"
    $P826 = $P825."ast"()
    $P827 = $P824."push"($P826)
.annotate 'line', 370
    .return ($P827)
.end


.namespace ["mantra";"Actions"]
.sub "assignment"  :subid("53_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_838
.annotate 'line', 376
    .const 'Sub' $P885 = "55_1283117838.46117" 
    capture_lex $P885
    .const 'Sub' $P869 = "54_1283117838.46117" 
    capture_lex $P869
    new $P837, 'ExceptionHandler'
    set_addr $P837, control_836
    $P837."handle_types"(57)
    push_eh $P837
    .lex "self", self
    .lex "$/", param_838
.annotate 'line', 377
    get_global $P839, "@?BLOCK"
    unless_null $P839, vivify_257
    $P839 = root_new ['parrot';'ResizablePMCArray']
    set_global "@?BLOCK", $P839
  vivify_257:
.annotate 'line', 378
    get_global $P840, "$?BLOCK"
    unless_null $P840, vivify_258
    new $P840, "Undef"
    set_global "$?BLOCK", $P840
  vivify_258:
.annotate 'line', 379
    get_global $P841, "$?CLASS"
    unless_null $P841, vivify_259
    new $P841, "Undef"
    set_global "$?CLASS", $P841
  vivify_259:
.annotate 'line', 383
    new $P842, "Undef"
    .lex "$past", $P842
.annotate 'line', 395
    new $P843, "Undef"
    .lex "$variable", $P843
.annotate 'line', 396
    new $P844, "Undef"
    .lex "$variable_scope", $P844
.annotate 'line', 397
    new $P845, "Undef"
    .lex "$variable_name", $P845
.annotate 'line', 428
    new $P846, "Undef"
    .lex "$value", $P846
.annotate 'line', 376
    get_global $P847, "@?BLOCK"
    get_global $P848, "$?BLOCK"
    get_global $P849, "$?CLASS"
.annotate 'line', 383
    get_hll_global $P850, ["PAST"], "Stmts"
    $P851 = $P850."new"()
    store_lex "$past", $P851
.annotate 'line', 395
    find_lex $P852, "$/"
    unless_null $P852, vivify_260
    $P852 = root_new ['parrot';'Hash']
  vivify_260:
    set $P853, $P852["writable_variable"]
    unless_null $P853, vivify_261
    new $P853, "Undef"
  vivify_261:
    $P854 = $P853."ast"()
    store_lex "$variable", $P854
.annotate 'line', 396
    find_lex $P855, "$variable"
    $P856 = $P855."scope"()
    store_lex "$variable_scope", $P856
.annotate 'line', 397
    find_lex $P857, "$variable"
    $P858 = $P857."name"()
    store_lex "$variable_name", $P858
.annotate 'line', 399
    find_lex $P860, "$variable_scope"
    set $S861, $P860
    iseq $I862, $S861, "lexical"
    unless $I862, if_859_end
.annotate 'line', 400
    find_lex $P863, "$variable"
    $P863."isdecl"(1)
.annotate 'line', 401
    get_global $P865, "@?BLOCK"
    defined $I866, $P865
    unless $I866, for_undef_262
    iter $P864, $P865
    new $P879, 'ExceptionHandler'
    set_addr $P879, loop878_handler
    $P879."handle_types"(64, 66, 65)
    push_eh $P879
  loop878_test:
    unless $P864, loop878_done
    shift $P867, $P864
  loop878_redo:
    .const 'Sub' $P869 = "54_1283117838.46117" 
    capture_lex $P869
    $P869($P867)
  loop878_next:
    goto loop878_test
  loop878_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P880, exception, 'type'
    eq $P880, 64, loop878_next
    eq $P880, 66, loop878_redo
  loop878_done:
    pop_eh 
  for_undef_262:
.annotate 'line', 407
    find_lex $P882, "$variable"
    $P883 = $P882."isdecl"()
    unless $P883, if_881_end
    .const 'Sub' $P885 = "55_1283117838.46117" 
    capture_lex $P885
    $P885()
  if_881_end:
  if_859_end:
.annotate 'line', 427
    find_lex $P903, "$variable"
    $P903."lvalue"(1)
.annotate 'line', 428
    find_lex $P904, "$/"
    unless_null $P904, vivify_263
    $P904 = root_new ['parrot';'Hash']
  vivify_263:
    set $P905, $P904["basic_expression"]
    unless_null $P905, vivify_264
    new $P905, "Undef"
  vivify_264:
    $P906 = $P905."ast"()
    store_lex "$value", $P906
.annotate 'line', 430
    find_lex $P907, "$past"
    get_hll_global $P908, ["PAST"], "Op"
    find_lex $P909, "$variable"
    find_lex $P910, "$value"
    find_lex $P911, "$/"
    $P912 = $P908."new"($P909, $P910, "bind" :named("pasttype"), $P911 :named("node"))
    $P907."push"($P912)
.annotate 'line', 434
    find_lex $P913, "$/"
    find_lex $P914, "$past"
    $P915 = $P913."!make"($P914)
.annotate 'line', 376
    .return ($P915)
  control_836:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P916, exception, "payload"
    .return ($P916)
.end


.namespace ["mantra";"Actions"]
.sub "_block868"  :anon :subid("54_1283117838.46117") :outer("53_1283117838.46117")
    .param pmc param_870
.annotate 'line', 401
    .lex "$_", param_870
.annotate 'line', 402
    find_lex $P873, "$_"
    find_lex $P874, "$variable_name"
    $P875 = $P873."symbol"($P874)
    if $P875, if_872
    set $P871, $P875
    goto if_872_end
  if_872:
.annotate 'line', 403
    find_lex $P876, "$variable"
    $P877 = $P876."isdecl"(0)
.annotate 'line', 402
    set $P871, $P877
  if_872_end:
.annotate 'line', 401
    .return ($P871)
.end


.namespace ["mantra";"Actions"]
.sub "_block884"  :anon :subid("55_1283117838.46117") :outer("53_1283117838.46117")
.annotate 'line', 411
    new $P886, "Undef"
    .lex "$variable2", $P886
.annotate 'line', 408
    get_global $P887, "$?BLOCK"
    find_lex $P888, "$variable_name"
    $P887."symbol"($P888, "lexical" :named("scope"))
.annotate 'line', 411
    get_hll_global $P889, ["PAST"], "Var"
    find_lex $P890, "$variable_name"
    find_lex $P891, "$/"
    $P892 = $P889."new"($P890 :named("name"), "lexical" :named("scope"), "Undef" :named("viviself"), $P891 :named("node"))
    store_lex "$variable2", $P892
.annotate 'line', 415
    find_lex $P893, "$past"
    get_hll_global $P894, ["PAST"], "Op"
    find_lex $P895, "$variable2"
.annotate 'line', 416
    get_hll_global $P896, ["PAST"], "Val"
    $P897 = $P896."new"("Integer" :named("returns"), 0 :named("value"))
    find_lex $P898, "$/"
    $P899 = $P894."new"($P895, $P897, "bind" :named("pasttype"), $P898 :named("node"))
.annotate 'line', 415
    $P893."push"($P899)
.annotate 'line', 419
    find_lex $P900, "$variable2"
    $P900."isdecl"(1)
.annotate 'line', 420
    find_lex $P901, "$variable"
    $P902 = $P901."isdecl"(0)
.annotate 'line', 407
    .return ($P902)
.end


.namespace ["mantra";"Actions"]
.sub "local_variable"  :subid("56_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_920
.annotate 'line', 437
    .const 'Sub' $P933 = "57_1283117838.46117" 
    capture_lex $P933
    new $P919, 'ExceptionHandler'
    set_addr $P919, control_918
    $P919."handle_types"(57)
    push_eh $P919
    .lex "self", self
    .lex "$/", param_920
.annotate 'line', 438
    get_global $P921, "@?BLOCK"
    unless_null $P921, vivify_265
    $P921 = root_new ['parrot';'ResizablePMCArray']
    set_global "@?BLOCK", $P921
  vivify_265:
.annotate 'line', 440
    new $P922, "Undef"
    .lex "$name", $P922
.annotate 'line', 442
    new $P923, "Undef"
    .lex "$defined", $P923
.annotate 'line', 437
    get_global $P924, "@?BLOCK"
.annotate 'line', 440
    find_lex $P925, "$/"
    unless_null $P925, vivify_266
    $P925 = root_new ['parrot';'Hash']
  vivify_266:
    set $P926, $P925["name"]
    unless_null $P926, vivify_267
    new $P926, "Undef"
  vivify_267:
    store_lex "$name", $P926
.annotate 'line', 442
    new $P927, "Integer"
    assign $P927, 0
    store_lex "$defined", $P927
.annotate 'line', 444
    get_global $P929, "@?BLOCK"
    defined $I930, $P929
    unless $I930, for_undef_268
    iter $P928, $P929
    new $P942, 'ExceptionHandler'
    set_addr $P942, loop941_handler
    $P942."handle_types"(64, 66, 65)
    push_eh $P942
  loop941_test:
    unless $P928, loop941_done
    shift $P931, $P928
  loop941_redo:
    .const 'Sub' $P933 = "57_1283117838.46117" 
    capture_lex $P933
    $P933($P931)
  loop941_next:
    goto loop941_test
  loop941_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P943, exception, 'type'
    eq $P943, 64, loop941_next
    eq $P943, 66, loop941_redo
  loop941_done:
    pop_eh 
  for_undef_268:
.annotate 'line', 451
    find_lex $P944, "$/"
    get_hll_global $P945, ["PAST"], "Var"
    find_lex $P946, "$name"
    find_lex $P947, "$/"
    $P948 = $P945."new"($P946 :named("name"), "lexical" :named("scope"), "Undef" :named("viviself"), $P947 :named("node"))
    $P949 = $P944."!make"($P948)
.annotate 'line', 437
    .return ($P949)
  control_918:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P950, exception, "payload"
    .return ($P950)
.end


.namespace ["mantra";"Actions"]
.sub "_block932"  :anon :subid("57_1283117838.46117") :outer("56_1283117838.46117")
    .param pmc param_934
.annotate 'line', 444
    .lex "$_", param_934
.annotate 'line', 445
    find_lex $P937, "$_"
    find_lex $P938, "$name"
    $P939 = $P937."symbol"($P938)
    if $P939, if_936
    set $P935, $P939
    goto if_936_end
  if_936:
.annotate 'line', 446
    new $P940, "Integer"
    assign $P940, 1
    store_lex "$defined", $P940
.annotate 'line', 445
    set $P935, $P940
  if_936_end:
.annotate 'line', 444
    .return ($P935)
.end


.namespace ["mantra";"Actions"]
.sub "string_constant"  :subid("58_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_954
.annotate 'line', 461
    new $P953, 'ExceptionHandler'
    set_addr $P953, control_952
    $P953."handle_types"(57)
    push_eh $P953
    .lex "self", self
    .lex "$/", param_954
.annotate 'line', 462
    new $P955, "Undef"
    .lex "$past", $P955
    find_lex $P956, "$/"
    unless_null $P956, vivify_269
    $P956 = root_new ['parrot';'Hash']
  vivify_269:
    set $P957, $P956["quote"]
    unless_null $P957, vivify_270
    new $P957, "Undef"
  vivify_270:
    $P958 = $P957."ast"()
    store_lex "$past", $P958
.annotate 'line', 463
    find_lex $P959, "$past"
    $P959."returns"("String")
.annotate 'line', 464
    find_lex $P960, "$/"
    find_lex $P961, "$past"
    $P962 = $P960."!make"($P961)
.annotate 'line', 461
    .return ($P962)
  control_952:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P963, exception, "payload"
    .return ($P963)
.end


.namespace ["mantra";"Actions"]
.sub "quote:sym<'>"  :subid("59_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_967
.annotate 'line', 467
    new $P966, 'ExceptionHandler'
    set_addr $P966, control_965
    $P966."handle_types"(57)
    push_eh $P966
    .lex "self", self
    .lex "$/", param_967
    find_lex $P968, "$/"
    find_lex $P969, "$/"
    unless_null $P969, vivify_271
    $P969 = root_new ['parrot';'Hash']
  vivify_271:
    set $P970, $P969["quote_EXPR"]
    unless_null $P970, vivify_272
    new $P970, "Undef"
  vivify_272:
    $P971 = $P970."ast"()
    $P972 = $P968."!make"($P971)
    .return ($P972)
  control_965:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P973, exception, "payload"
    .return ($P973)
.end


.namespace ["mantra";"Actions"]
.sub "quote:sym<\">"  :subid("60_1283117838.46117") :method :outer("11_1283117838.46117")
    .param pmc param_977
.annotate 'line', 468
    new $P976, 'ExceptionHandler'
    set_addr $P976, control_975
    $P976."handle_types"(57)
    push_eh $P976
    .lex "self", self
    .lex "$/", param_977
    find_lex $P978, "$/"
    find_lex $P979, "$/"
    unless_null $P979, vivify_273
    $P979 = root_new ['parrot';'Hash']
  vivify_273:
    set $P980, $P979["quote_EXPR"]
    unless_null $P980, vivify_274
    new $P980, "Undef"
  vivify_274:
    $P981 = $P980."ast"()
    $P982 = $P978."!make"($P981)
    .return ($P982)
  control_975:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P983, exception, "payload"
    .return ($P983)
.end


.namespace ["mantra";"Actions"]
.sub "_block985" :load :anon :subid("61_1283117838.46117")
.annotate 'line', 3
    .const 'Sub' $P987 = "11_1283117838.46117" 
    $P988 = $P987()
    .return ($P988)
.end


.namespace []
.sub "_block990" :load :anon :subid("62_1283117838.46117")
.annotate 'line', 1
    .const 'Sub' $P992 = "10_1283117838.46117" 
    $P993 = $P992()
    .return ($P993)
.end

