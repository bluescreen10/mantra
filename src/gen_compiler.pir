
.namespace []
.sub "_block11"  :anon :subid("10_1283117832.82947")
.annotate 'line', 0
    get_hll_global $P14, ["mantra";"Compiler"], "_block13" 
    capture_lex $P14
.annotate 'line', 3
    get_hll_global $P14, ["mantra";"Compiler"], "_block13" 
    capture_lex $P14
    $P24 = $P14()
.annotate 'line', 1
    .return ($P24)
    .const 'Sub' $P26 = "13_1283117832.82947" 
    .return ($P26)
.end


.namespace []
.sub "" :load :init :subid("post14") :outer("10_1283117832.82947")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1283117832.82947" 
    .local pmc block
    set block, $P12
    $P29 = get_root_global ["parrot"], "P6metaclass"
    $P29."new_class"("mantra::Compiler", "HLL::Compiler" :named("parent"))
.end


.namespace ["mantra";"Compiler"]
.sub "_block13"  :subid("11_1283117832.82947") :outer("10_1283117832.82947")
.annotate 'line', 3
    .return ()
    .const 'Sub' $P16 = "12_1283117832.82947" 
    .return ($P16)
.end


.namespace ["mantra";"Compiler"]
.sub "" :load :init :subid("post15") :outer("11_1283117832.82947")
.annotate 'line', 3
    get_hll_global $P14, ["mantra";"Compiler"], "_block13" 
    .local pmc block
    set block, $P14
.annotate 'line', 4
    get_hll_global $P19, ["mantra"], "Compiler"
    $P19."language"("mantra")
.annotate 'line', 5
    get_hll_global $P20, ["mantra"], "Compiler"
    get_hll_global $P21, ["mantra"], "Grammar"
    $P20."parsegrammar"($P21)
.annotate 'line', 6
    get_hll_global $P22, ["mantra"], "Compiler"
    get_hll_global $P23, ["mantra"], "Actions"
    $P22."parseactions"($P23)
.end


.namespace ["mantra";"Compiler"]
.sub "_block15" :load :anon :subid("12_1283117832.82947")
.annotate 'line', 3
    .const 'Sub' $P17 = "11_1283117832.82947" 
    $P18 = $P17()
    .return ($P18)
.end


.namespace []
.sub "_block25" :load :anon :subid("13_1283117832.82947")
.annotate 'line', 1
    .const 'Sub' $P27 = "10_1283117832.82947" 
    $P28 = $P27()
    .return ($P28)
.end

