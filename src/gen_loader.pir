
.namespace []
.sub "_block11"  :anon :subid("10_1283117833.6173")
.annotate 'line', 0
    get_hll_global $P14, ["mantra";"Loader"], "_block13" 
    capture_lex $P14
.annotate 'line', 3
    get_hll_global $P14, ["mantra";"Loader"], "_block13" 
    capture_lex $P14
    $P77 = $P14()
.annotate 'line', 1
    .return ($P77)
    .const 'Sub' $P79 = "15_1283117833.6173" 
    .return ($P79)
.end


.namespace []
.sub "" :load :init :subid("post16") :outer("10_1283117833.6173")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1283117833.6173" 
    .local pmc block
    set block, $P12
    $P82 = get_root_global ["parrot"], "P6metaclass"
    $P82."new_class"("mantra::Loader")
.end


.namespace ["mantra";"Loader"]
.sub "_block13"  :subid("11_1283117833.6173") :outer("10_1283117833.6173")
.annotate 'line', 3
    .const 'Sub' $P61 = "13_1283117833.6173" 
    capture_lex $P61
    .const 'Sub' $P15 = "12_1283117833.6173" 
    capture_lex $P15
.annotate 'line', 21
    .const 'Sub' $P61 = "13_1283117833.6173" 
    newclosure $P72, $P61
.annotate 'line', 3
    .return ($P72)
    .const 'Sub' $P74 = "14_1283117833.6173" 
    .return ($P74)
.end


.namespace ["mantra";"Loader"]
.sub "import"  :subid("12_1283117833.6173") :method :outer("11_1283117833.6173")
    .param pmc param_18
.annotate 'line', 3
    new $P17, 'ExceptionHandler'
    set_addr $P17, control_16
    $P17."handle_types"(57)
    push_eh $P17
    .lex "self", self
    .lex "$class", param_18
.annotate 'line', 4
    $P19 = root_new ['parrot';'ResizablePMCArray']
    .lex "@inc", $P19
.annotate 'line', 6
    new $P20, "Undef"
    .lex "$separator", $P20
.annotate 'line', 7
    $P21 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P21
.annotate 'line', 8
    new $P22, "Undef"
    .lex "$module_name", $P22
.annotate 'line', 11
    new $P23, "Undef"
    .lex "$pm_file", $P23
.annotate 'line', 12
    new $P24, "Undef"
    .lex "$fh", $P24
.annotate 'line', 14
    new $P25, "Undef"
    .lex "$source", $P25
.annotate 'line', 16
    new $P26, "Undef"
    .lex "$eval", $P26
.annotate 'line', 4
    new $P27, "String"
    assign $P27, "@INC"
    set $S28, $P27
    get_hll_global $P29, $S28
    store_lex "@inc", $P29
.annotate 'line', 6
    find_lex $P30, "self"
    $P31 = $P30."separator"()
    store_lex "$separator", $P31
.annotate 'line', 7
    new $P32, "String"
    assign $P32, "."
    set $S33, $P32
    find_lex $P34, "$class"
    set $S35, $P34
    split $P36, $S33, $S35
    store_lex "@ns", $P36
.annotate 'line', 8
    find_lex $P37, "$separator"
    set $S38, $P37
    find_lex $P39, "@ns"
    join $S40, $S38, $P39
    new $P41, 'String'
    set $P41, $S40
    store_lex "$module_name", $P41
.annotate 'line', 9
    find_lex $P42, "$module_name"
    concat $P43, $P42, ".ma"
    store_lex "$module_name", $P43
.annotate 'line', 11
    new $P44, "String"
    assign $P44, "src/lib/"
    find_lex $P45, "$module_name"
    concat $P46, $P44, $P45
    store_lex "$pm_file", $P46
.annotate 'line', 12
    find_lex $P47, "$pm_file"
    set $S48, $P47
    new $P49, "String"
    assign $P49, "r"
    set $S50, $P49
    open $P51, $S48, $S50
    store_lex "$fh", $P51
.annotate 'line', 13
    find_lex $P52, "$fh"
    $P52."encoding"("utf8")
.annotate 'line', 14
    find_lex $P53, "$fh"
    $P54 = $P53."readall"()
    store_lex "$source", $P54
.annotate 'line', 15
    find_lex $P55, "$fh"
    $P55."close"()
.annotate 'line', 16
    get_hll_global $P56, ["mantra"], "Compiler"
    find_lex $P57, "$source"
    $P58 = $P56."compile"($P57)
    store_lex "$eval", $P58
.annotate 'line', 17
    find_lex $P59, "$eval"
    $P59()
.annotate 'line', 3
    .return (1)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P60, exception, "payload"
    .return ($P60)
.end


.namespace ["mantra";"Loader"]
.sub "separator"  :subid("13_1283117833.6173") :method :outer("11_1283117833.6173")
.annotate 'line', 21
    new $P63, 'ExceptionHandler'
    set_addr $P63, control_62
    $P63."handle_types"(57)
    push_eh $P63
    .lex "self", self
.annotate 'line', 22
    get_global $P64, "$PATH_SEPARATOR"
    unless_null $P64, vivify_17
    new $P64, "Undef"
    set_global "$PATH_SEPARATOR", $P64
  vivify_17:
.annotate 'line', 21
    get_global $P65, "$PATH_SEPARATOR"
.annotate 'line', 24
    get_global $P67, "$PATH_SEPARATOR"
    if $P67, unless_66_end
.annotate 'line', 25

            .include 'iglobals.pasm'
            $P0 = getinterp
            $P1 = $P0[.IGLOBALS_CONFIG_HASH]
            $P68 = $P1['slash']
        
    set_global "$PATH_SEPARATOR", $P68
  unless_66_end:
.annotate 'line', 32
    new $P69, "Exception"
    set $P69['type'], 57
    get_global $P70, "$PATH_SEPARATOR"
    setattribute $P69, 'payload', $P70
    throw $P69
.annotate 'line', 21
    .return ()
  control_62:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P71, exception, "payload"
    .return ($P71)
.end


.namespace ["mantra";"Loader"]
.sub "_block73" :load :anon :subid("14_1283117833.6173")
.annotate 'line', 3
    .const 'Sub' $P75 = "11_1283117833.6173" 
    $P76 = $P75()
    .return ($P76)
.end


.namespace []
.sub "_block78" :load :anon :subid("15_1283117833.6173")
.annotate 'line', 1
    .const 'Sub' $P80 = "10_1283117833.6173" 
    $P81 = $P80()
    .return ($P81)
.end

