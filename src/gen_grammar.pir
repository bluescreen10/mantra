
.namespace []
.sub "_block11"  :anon :subid("10_1283117834.77257")
.annotate 'line', 0
    get_hll_global $P14, ["mantra";"Grammar"], "_block13" 
    capture_lex $P14
.annotate 'line', 9
    get_hll_global $P14, ["mantra";"Grammar"], "_block13" 
    capture_lex $P14
    $P415 = $P14()
.annotate 'line', 1
    .return ($P415)
    .const 'Sub' $P417 = "98_1283117834.77257" 
    .return ($P417)
.end


.namespace []
.sub "" :load :init :subid("post99") :outer("10_1283117834.77257")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1283117834.77257" 
    .local pmc block
    set block, $P12
    $P420 = get_root_global ["parrot"], "P6metaclass"
    $P420."new_class"("mantra::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["mantra";"Grammar"]
.sub "_block13"  :subid("11_1283117834.77257") :outer("10_1283117834.77257")
.annotate 'line', 9
    .const 'Sub' $P399 = "95_1283117834.77257" 
    capture_lex $P399
    .const 'Sub' $P389 = "93_1283117834.77257" 
    capture_lex $P389
    .const 'Sub' $P381 = "91_1283117834.77257" 
    capture_lex $P381
    .const 'Sub' $P376 = "89_1283117834.77257" 
    capture_lex $P376
    .const 'Sub' $P366 = "85_1283117834.77257" 
    capture_lex $P366
    .const 'Sub' $P360 = "83_1283117834.77257" 
    capture_lex $P360
    .const 'Sub' $P352 = "81_1283117834.77257" 
    capture_lex $P352
    .const 'Sub' $P346 = "79_1283117834.77257" 
    capture_lex $P346
    .const 'Sub' $P340 = "77_1283117834.77257" 
    capture_lex $P340
    .const 'Sub' $P335 = "75_1283117834.77257" 
    capture_lex $P335
    .const 'Sub' $P327 = "73_1283117834.77257" 
    capture_lex $P327
    .const 'Sub' $P319 = "71_1283117834.77257" 
    capture_lex $P319
    .const 'Sub' $P311 = "69_1283117834.77257" 
    capture_lex $P311
    .const 'Sub' $P296 = "67_1283117834.77257" 
    capture_lex $P296
    .const 'Sub' $P254 = "59_1283117834.77257" 
    capture_lex $P254
    .const 'Sub' $P246 = "57_1283117834.77257" 
    capture_lex $P246
    .const 'Sub' $P223 = "52_1283117834.77257" 
    capture_lex $P223
    .const 'Sub' $P200 = "50_1283117834.77257" 
    capture_lex $P200
    .const 'Sub' $P188 = "48_1283117834.77257" 
    capture_lex $P188
    .const 'Sub' $P176 = "46_1283117834.77257" 
    capture_lex $P176
    .const 'Sub' $P168 = "44_1283117834.77257" 
    capture_lex $P168
    .const 'Sub' $P158 = "42_1283117834.77257" 
    capture_lex $P158
    .const 'Sub' $P145 = "40_1283117834.77257" 
    capture_lex $P145
    .const 'Sub' $P139 = "38_1283117834.77257" 
    capture_lex $P139
    .const 'Sub' $P131 = "36_1283117834.77257" 
    capture_lex $P131
    .const 'Sub' $P117 = "34_1283117834.77257" 
    capture_lex $P117
    .const 'Sub' $P108 = "32_1283117834.77257" 
    capture_lex $P108
    .const 'Sub' $P97 = "30_1283117834.77257" 
    capture_lex $P97
    .const 'Sub' $P89 = "28_1283117834.77257" 
    capture_lex $P89
    .const 'Sub' $P80 = "26_1283117834.77257" 
    capture_lex $P80
    .const 'Sub' $P74 = "24_1283117834.77257" 
    capture_lex $P74
    .const 'Sub' $P69 = "22_1283117834.77257" 
    capture_lex $P69
    .const 'Sub' $P43 = "20_1283117834.77257" 
    capture_lex $P43
    .const 'Sub' $P36 = "18_1283117834.77257" 
    capture_lex $P36
    .const 'Sub' $P27 = "16_1283117834.77257" 
    capture_lex $P27
    .const 'Sub' $P22 = "14_1283117834.77257" 
    capture_lex $P22
    .const 'Sub' $P15 = "12_1283117834.77257" 
    capture_lex $P15
    .const 'Sub' $P399 = "95_1283117834.77257" 
    capture_lex $P399
    .return ($P399)
    .const 'Sub' $P412 = "97_1283117834.77257" 
    .return ($P412)
.end


.namespace ["mantra";"Grammar"]
.sub "TOP"  :subid("12_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx16_tgt
    .local int rx16_pos
    .local int rx16_off
    .local int rx16_eos
    .local int rx16_rep
    .local pmc rx16_cur
    (rx16_cur, rx16_pos, rx16_tgt) = self."!cursor_start"()
    rx16_cur."!cursor_debug"("START ", "TOP")
    .lex unicode:"$\x{a2}", rx16_cur
    .local pmc match
    .lex "$/", match
    length rx16_eos, rx16_tgt
    set rx16_off, 0
    lt rx16_pos, 2, rx16_start
    sub rx16_off, rx16_pos, 1
    substr rx16_tgt, rx16_tgt, rx16_off
  rx16_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan20_done
    goto rxscan20_scan
  rxscan20_loop:
    ($P10) = rx16_cur."from"()
    inc $P10
    set rx16_pos, $P10
    ge rx16_pos, rx16_eos, rxscan20_done
  rxscan20_scan:
    set_addr $I10, rxscan20_loop
    rx16_cur."!mark_push"(0, rx16_pos, $I10)
  rxscan20_done:
.annotate 'line', 10
  # rx subrule "compiler_init" subtype=method negate=
    rx16_cur."!cursor_pos"(rx16_pos)
    $P10 = rx16_cur."compiler_init"()
    unless $P10, rx16_fail
    rx16_pos = $P10."pos"()
.annotate 'line', 11
  # rx subrule "main" subtype=capture negate=
    rx16_cur."!cursor_pos"(rx16_pos)
    $P10 = rx16_cur."main"()
    unless $P10, rx16_fail
    rx16_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("main")
    rx16_pos = $P10."pos"()
  alt21_0:
.annotate 'line', 12
    set_addr $I10, alt21_1
    rx16_cur."!mark_push"(0, rx16_pos, $I10)
  # rxanchor eos
    ne rx16_pos, rx16_eos, rx16_fail
    goto alt21_end
  alt21_1:
  # rx subrule "panic" subtype=method negate=
    rx16_cur."!cursor_pos"(rx16_pos)
    $P10 = rx16_cur."panic"("Syntax error")
    unless $P10, rx16_fail
    rx16_pos = $P10."pos"()
  alt21_end:
.annotate 'line', 9
  # rx pass
    rx16_cur."!cursor_pass"(rx16_pos, "TOP")
    rx16_cur."!cursor_debug"("PASS  ", "TOP", " at pos=", rx16_pos)
    .return (rx16_cur)
  rx16_fail:
    (rx16_rep, rx16_pos, $I10, $P10) = rx16_cur."!mark_fail"(0)
    lt rx16_pos, -1, rx16_done
    eq rx16_pos, -1, rx16_fail
    jump $I10
  rx16_done:
    rx16_cur."!cursor_fail"()
    rx16_cur."!cursor_debug"("FAIL  ", "TOP")
    .return (rx16_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__TOP"  :subid("13_1283117834.77257") :method
.annotate 'line', 9
    $P18 = self."!PREFIX__!subrule"("", "")
    new $P19, "ResizablePMCArray"
    push $P19, $P18
    .return ($P19)
.end


.namespace ["mantra";"Grammar"]
.sub "compiler_init"  :subid("14_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx23_tgt
    .local int rx23_pos
    .local int rx23_off
    .local int rx23_eos
    .local int rx23_rep
    .local pmc rx23_cur
    (rx23_cur, rx23_pos, rx23_tgt) = self."!cursor_start"()
    rx23_cur."!cursor_debug"("START ", "compiler_init")
    .lex unicode:"$\x{a2}", rx23_cur
    .local pmc match
    .lex "$/", match
    length rx23_eos, rx23_tgt
    set rx23_off, 0
    lt rx23_pos, 2, rx23_start
    sub rx23_off, rx23_pos, 1
    substr rx23_tgt, rx23_tgt, rx23_off
  rx23_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan26_done
    goto rxscan26_scan
  rxscan26_loop:
    ($P10) = rx23_cur."from"()
    inc $P10
    set rx23_pos, $P10
    ge rx23_pos, rx23_eos, rxscan26_done
  rxscan26_scan:
    set_addr $I10, rxscan26_loop
    rx23_cur."!mark_push"(0, rx23_pos, $I10)
  rxscan26_done:
.annotate 'line', 15
  # rx pass
    rx23_cur."!cursor_pass"(rx23_pos, "compiler_init")
    rx23_cur."!cursor_debug"("PASS  ", "compiler_init", " at pos=", rx23_pos)
    .return (rx23_cur)
  rx23_fail:
.annotate 'line', 9
    (rx23_rep, rx23_pos, $I10, $P10) = rx23_cur."!mark_fail"(0)
    lt rx23_pos, -1, rx23_done
    eq rx23_pos, -1, rx23_fail
    jump $I10
  rx23_done:
    rx23_cur."!cursor_fail"()
    rx23_cur."!cursor_debug"("FAIL  ", "compiler_init")
    .return (rx23_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__compiler_init"  :subid("15_1283117834.77257") :method
.annotate 'line', 9
    new $P25, "ResizablePMCArray"
    push $P25, ""
    .return ($P25)
.end


.namespace ["mantra";"Grammar"]
.sub "main"  :subid("16_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx28_tgt
    .local int rx28_pos
    .local int rx28_off
    .local int rx28_eos
    .local int rx28_rep
    .local pmc rx28_cur
    (rx28_cur, rx28_pos, rx28_tgt) = self."!cursor_start"()
    rx28_cur."!cursor_debug"("START ", "main")
    rx28_cur."!cursor_caparray"("statement_or_class")
    .lex unicode:"$\x{a2}", rx28_cur
    .local pmc match
    .lex "$/", match
    length rx28_eos, rx28_tgt
    set rx28_off, 0
    lt rx28_pos, 2, rx28_start
    sub rx28_off, rx28_pos, 1
    substr rx28_tgt, rx28_tgt, rx28_off
  rx28_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan31_done
    goto rxscan31_scan
  rxscan31_loop:
    ($P10) = rx28_cur."from"()
    inc $P10
    set rx28_pos, $P10
    ge rx28_pos, rx28_eos, rxscan31_done
  rxscan31_scan:
    set_addr $I10, rxscan31_loop
    rx28_cur."!mark_push"(0, rx28_pos, $I10)
  rxscan31_done:
.annotate 'line', 19
  # rx subrule "ws" subtype=method negate=
    rx28_cur."!cursor_pos"(rx28_pos)
    $P10 = rx28_cur."ws"()
    unless $P10, rx28_fail
    rx28_pos = $P10."pos"()
.annotate 'line', 20
  # rx rxquantr33 ** 0..*
    set_addr $I34, rxquantr33_done
    rx28_cur."!mark_push"(0, rx28_pos, $I34)
  rxquantr33_loop:
  # rx subrule "statement_or_class" subtype=capture negate=
    rx28_cur."!cursor_pos"(rx28_pos)
    $P10 = rx28_cur."statement_or_class"()
    unless $P10, rx28_fail
    rx28_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_or_class")
    rx28_pos = $P10."pos"()
    (rx28_rep) = rx28_cur."!mark_commit"($I34)
    rx28_cur."!mark_push"(rx28_rep, rx28_pos, $I34)
    goto rxquantr33_loop
  rxquantr33_done:
  # rx subrule "ws" subtype=method negate=
    rx28_cur."!cursor_pos"(rx28_pos)
    $P10 = rx28_cur."ws"()
    unless $P10, rx28_fail
    rx28_pos = $P10."pos"()
.annotate 'line', 19
  # rx pass
    rx28_cur."!cursor_pass"(rx28_pos, "main")
    rx28_cur."!cursor_debug"("PASS  ", "main", " at pos=", rx28_pos)
    .return (rx28_cur)
  rx28_fail:
.annotate 'line', 9
    (rx28_rep, rx28_pos, $I10, $P10) = rx28_cur."!mark_fail"(0)
    lt rx28_pos, -1, rx28_done
    eq rx28_pos, -1, rx28_fail
    jump $I10
  rx28_done:
    rx28_cur."!cursor_fail"()
    rx28_cur."!cursor_debug"("FAIL  ", "main")
    .return (rx28_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__main"  :subid("17_1283117834.77257") :method
.annotate 'line', 9
    new $P30, "ResizablePMCArray"
    push $P30, ""
    .return ($P30)
.end


.namespace ["mantra";"Grammar"]
.sub "statement_or_class"  :subid("18_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx37_tgt
    .local int rx37_pos
    .local int rx37_off
    .local int rx37_eos
    .local int rx37_rep
    .local pmc rx37_cur
    (rx37_cur, rx37_pos, rx37_tgt) = self."!cursor_start"()
    rx37_cur."!cursor_debug"("START ", "statement_or_class")
    .lex unicode:"$\x{a2}", rx37_cur
    .local pmc match
    .lex "$/", match
    length rx37_eos, rx37_tgt
    set rx37_off, 0
    lt rx37_pos, 2, rx37_start
    sub rx37_off, rx37_pos, 1
    substr rx37_tgt, rx37_tgt, rx37_off
  rx37_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan40_done
    goto rxscan40_scan
  rxscan40_loop:
    ($P10) = rx37_cur."from"()
    inc $P10
    set rx37_pos, $P10
    ge rx37_pos, rx37_eos, rxscan40_done
  rxscan40_scan:
    set_addr $I10, rxscan40_loop
    rx37_cur."!mark_push"(0, rx37_pos, $I10)
  rxscan40_done:
.annotate 'line', 24
  # rx subrule "ws" subtype=method negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."ws"()
    unless $P10, rx37_fail
    rx37_pos = $P10."pos"()
  # rx subrule "class_definition" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."class_definition"()
    unless $P10, rx37_fail
    rx37_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("class_definition")
    rx37_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."ws"()
    unless $P10, rx37_fail
    rx37_pos = $P10."pos"()
  # rx pass
    rx37_cur."!cursor_pass"(rx37_pos, "statement_or_class")
    rx37_cur."!cursor_debug"("PASS  ", "statement_or_class", " at pos=", rx37_pos)
    .return (rx37_cur)
  rx37_fail:
.annotate 'line', 9
    (rx37_rep, rx37_pos, $I10, $P10) = rx37_cur."!mark_fail"(0)
    lt rx37_pos, -1, rx37_done
    eq rx37_pos, -1, rx37_fail
    jump $I10
  rx37_done:
    rx37_cur."!cursor_fail"()
    rx37_cur."!cursor_debug"("FAIL  ", "statement_or_class")
    .return (rx37_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__statement_or_class"  :subid("19_1283117834.77257") :method
.annotate 'line', 9
    new $P39, "ResizablePMCArray"
    push $P39, ""
    .return ($P39)
.end


.namespace ["mantra";"Grammar"]
.sub "class_definition"  :subid("20_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx44_tgt
    .local int rx44_pos
    .local int rx44_off
    .local int rx44_eos
    .local int rx44_rep
    .local pmc rx44_cur
    (rx44_cur, rx44_pos, rx44_tgt) = self."!cursor_start"()
    rx44_cur."!cursor_debug"("START ", "class_definition")
    rx44_cur."!cursor_caparray"("class_identifier", "method_definition", "superclass")
    .lex unicode:"$\x{a2}", rx44_cur
    .local pmc match
    .lex "$/", match
    length rx44_eos, rx44_tgt
    set rx44_off, 0
    lt rx44_pos, 2, rx44_start
    sub rx44_off, rx44_pos, 1
    substr rx44_tgt, rx44_tgt, rx44_off
  rx44_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan47_done
    goto rxscan47_scan
  rxscan47_loop:
    ($P10) = rx44_cur."from"()
    inc $P10
    set rx44_pos, $P10
    ge rx44_pos, rx44_eos, rxscan47_done
  rxscan47_scan:
    set_addr $I10, rxscan47_loop
    rx44_cur."!mark_push"(0, rx44_pos, $I10)
  rxscan47_done:
.annotate 'line', 29
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
.annotate 'line', 31
  # rx literal  "class"
    add $I11, rx44_pos, 5
    gt $I11, rx44_eos, rx44_fail
    sub $I11, rx44_pos, rx44_off
    substr $S10, rx44_tgt, $I11, 5
    ne $S10, "class", rx44_fail
    add rx44_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
.annotate 'line', 32
  # rx subrule "begin_class" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."begin_class"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
.annotate 'line', 33
  # rx subrule "class_name" subtype=capture negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."class_name"()
    unless $P10, rx44_fail
    rx44_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("class_name")
    rx44_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
.annotate 'line', 38
  # rx rxquantr52 ** 0..1
    set_addr $I61, rxquantr52_done
    rx44_cur."!mark_push"(0, rx44_pos, $I61)
  rxquantr52_loop:
.annotate 'line', 36
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx44_pos, 2
    gt $I11, rx44_eos, rx44_fail
    sub $I11, rx44_pos, rx44_off
    substr $S10, rx44_tgt, $I11, 2
    ne $S10, "is", rx44_fail
    add rx44_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
.annotate 'line', 37
  # rx rxquantr55 ** 1..*
    set_addr $I59, rxquantr55_done
    rx44_cur."!mark_push"(0, -1, $I59)
  rxquantr55_loop:
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx subrule "class_identifier" subtype=capture negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."class_identifier"()
    unless $P10, rx44_fail
    rx44_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("superclass=class_identifier")
    rx44_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx charclass_q s r 0..-1
    sub $I10, rx44_pos, rx44_off
    find_not_cclass $I11, 32, rx44_tgt, $I10, rx44_eos
    add rx44_pos, rx44_off, $I11
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
    (rx44_rep) = rx44_cur."!mark_commit"($I59)
    rx44_cur."!mark_push"(rx44_rep, rx44_pos, $I59)
  # rx literal  ","
    add $I11, rx44_pos, 1
    gt $I11, rx44_eos, rx44_fail
    sub $I11, rx44_pos, rx44_off
    substr $S10, rx44_tgt, $I11, 1
    ne $S10, ",", rx44_fail
    add rx44_pos, 1
    goto rxquantr55_loop
  rxquantr55_done:
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
.annotate 'line', 38
    (rx44_rep) = rx44_cur."!mark_commit"($I61)
  rxquantr52_done:
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
.annotate 'line', 40
  # rx literal  "{"
    add $I11, rx44_pos, 1
    gt $I11, rx44_eos, rx44_fail
    sub $I11, rx44_pos, rx44_off
    substr $S10, rx44_tgt, $I11, 1
    ne $S10, "{", rx44_fail
    add rx44_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  # rx rxquantr64 ** 0..*
    set_addr $I65, rxquantr64_done
    rx44_cur."!mark_push"(0, rx44_pos, $I65)
  rxquantr64_loop:
  # rx subrule "method_definition" subtype=capture negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."method_definition"()
    unless $P10, rx44_fail
    rx44_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_definition")
    rx44_pos = $P10."pos"()
    (rx44_rep) = rx44_cur."!mark_commit"($I65)
    rx44_cur."!mark_push"(rx44_rep, rx44_pos, $I65)
    goto rxquantr64_loop
  rxquantr64_done:
  alt66_0:
    set_addr $I10, alt66_1
    rx44_cur."!mark_push"(0, rx44_pos, $I10)
  # rx literal  "}"
    add $I11, rx44_pos, 1
    gt $I11, rx44_eos, rx44_fail
    sub $I11, rx44_pos, rx44_off
    substr $S10, rx44_tgt, $I11, 1
    ne $S10, "}", rx44_fail
    add rx44_pos, 1
    goto alt66_end
  alt66_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."FAILGOAL"("'}'")
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
  alt66_end:
  # rx subrule "ws" subtype=method negate=
    rx44_cur."!cursor_pos"(rx44_pos)
    $P10 = rx44_cur."ws"()
    unless $P10, rx44_fail
    rx44_pos = $P10."pos"()
.annotate 'line', 29
  # rx pass
    rx44_cur."!cursor_pass"(rx44_pos, "class_definition")
    rx44_cur."!cursor_debug"("PASS  ", "class_definition", " at pos=", rx44_pos)
    .return (rx44_cur)
  rx44_fail:
.annotate 'line', 9
    (rx44_rep, rx44_pos, $I10, $P10) = rx44_cur."!mark_fail"(0)
    lt rx44_pos, -1, rx44_done
    eq rx44_pos, -1, rx44_fail
    jump $I10
  rx44_done:
    rx44_cur."!cursor_fail"()
    rx44_cur."!cursor_debug"("FAIL  ", "class_definition")
    .return (rx44_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__class_definition"  :subid("21_1283117834.77257") :method
.annotate 'line', 9
    new $P46, "ResizablePMCArray"
    push $P46, ""
    .return ($P46)
.end


.namespace ["mantra";"Grammar"]
.sub "begin_class"  :subid("22_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx70_tgt
    .local int rx70_pos
    .local int rx70_off
    .local int rx70_eos
    .local int rx70_rep
    .local pmc rx70_cur
    (rx70_cur, rx70_pos, rx70_tgt) = self."!cursor_start"()
    rx70_cur."!cursor_debug"("START ", "begin_class")
    .lex unicode:"$\x{a2}", rx70_cur
    .local pmc match
    .lex "$/", match
    length rx70_eos, rx70_tgt
    set rx70_off, 0
    lt rx70_pos, 2, rx70_start
    sub rx70_off, rx70_pos, 1
    substr rx70_tgt, rx70_tgt, rx70_off
  rx70_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan73_done
    goto rxscan73_scan
  rxscan73_loop:
    ($P10) = rx70_cur."from"()
    inc $P10
    set rx70_pos, $P10
    ge rx70_pos, rx70_eos, rxscan73_done
  rxscan73_scan:
    set_addr $I10, rxscan73_loop
    rx70_cur."!mark_push"(0, rx70_pos, $I10)
  rxscan73_done:
.annotate 'line', 43
  # rx pass
    rx70_cur."!cursor_pass"(rx70_pos, "begin_class")
    rx70_cur."!cursor_debug"("PASS  ", "begin_class", " at pos=", rx70_pos)
    .return (rx70_cur)
  rx70_fail:
.annotate 'line', 9
    (rx70_rep, rx70_pos, $I10, $P10) = rx70_cur."!mark_fail"(0)
    lt rx70_pos, -1, rx70_done
    eq rx70_pos, -1, rx70_fail
    jump $I10
  rx70_done:
    rx70_cur."!cursor_fail"()
    rx70_cur."!cursor_debug"("FAIL  ", "begin_class")
    .return (rx70_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__begin_class"  :subid("23_1283117834.77257") :method
.annotate 'line', 9
    new $P72, "ResizablePMCArray"
    push $P72, ""
    .return ($P72)
.end


.namespace ["mantra";"Grammar"]
.sub "class_name"  :subid("24_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx75_tgt
    .local int rx75_pos
    .local int rx75_off
    .local int rx75_eos
    .local int rx75_rep
    .local pmc rx75_cur
    (rx75_cur, rx75_pos, rx75_tgt) = self."!cursor_start"()
    rx75_cur."!cursor_debug"("START ", "class_name")
    .lex unicode:"$\x{a2}", rx75_cur
    .local pmc match
    .lex "$/", match
    length rx75_eos, rx75_tgt
    set rx75_off, 0
    lt rx75_pos, 2, rx75_start
    sub rx75_off, rx75_pos, 1
    substr rx75_tgt, rx75_tgt, rx75_off
  rx75_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan79_done
    goto rxscan79_scan
  rxscan79_loop:
    ($P10) = rx75_cur."from"()
    inc $P10
    set rx75_pos, $P10
    ge rx75_pos, rx75_eos, rxscan79_done
  rxscan79_scan:
    set_addr $I10, rxscan79_loop
    rx75_cur."!mark_push"(0, rx75_pos, $I10)
  rxscan79_done:
.annotate 'line', 48
  # rx subrule "class_identifier" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."class_identifier"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("class_identifier")
    rx75_pos = $P10."pos"()
.annotate 'line', 47
  # rx pass
    rx75_cur."!cursor_pass"(rx75_pos, "class_name")
    rx75_cur."!cursor_debug"("PASS  ", "class_name", " at pos=", rx75_pos)
    .return (rx75_cur)
  rx75_fail:
.annotate 'line', 9
    (rx75_rep, rx75_pos, $I10, $P10) = rx75_cur."!mark_fail"(0)
    lt rx75_pos, -1, rx75_done
    eq rx75_pos, -1, rx75_fail
    jump $I10
  rx75_done:
    rx75_cur."!cursor_fail"()
    rx75_cur."!cursor_debug"("FAIL  ", "class_name")
    .return (rx75_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__class_name"  :subid("25_1283117834.77257") :method
.annotate 'line', 9
    $P77 = self."!PREFIX__!subrule"("class_identifier", "")
    new $P78, "ResizablePMCArray"
    push $P78, $P77
    .return ($P78)
.end


.namespace ["mantra";"Grammar"]
.sub "class_identifier"  :subid("26_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    (rx81_cur, rx81_pos, rx81_tgt) = self."!cursor_start"()
    rx81_cur."!cursor_debug"("START ", "class_identifier")
    rx81_cur."!cursor_caparray"("identifier", "namespace")
    .lex unicode:"$\x{a2}", rx81_cur
    .local pmc match
    .lex "$/", match
    length rx81_eos, rx81_tgt
    set rx81_off, 0
    lt rx81_pos, 2, rx81_start
    sub rx81_off, rx81_pos, 1
    substr rx81_tgt, rx81_tgt, rx81_off
  rx81_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan85_done
    goto rxscan85_scan
  rxscan85_loop:
    ($P10) = rx81_cur."from"()
    inc $P10
    set rx81_pos, $P10
    ge rx81_pos, rx81_eos, rxscan85_done
  rxscan85_scan:
    set_addr $I10, rxscan85_loop
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  rxscan85_done:
  alt86_0:
.annotate 'line', 52
    set_addr $I10, alt86_1
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
.annotate 'line', 53
  # rx rxquantr87 ** 0..*
    set_addr $I88, rxquantr87_done
    rx81_cur."!mark_push"(0, rx81_pos, $I88)
  rxquantr87_loop:
  # rx subrule "identifier" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."identifier"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("namespace=identifier")
    rx81_pos = $P10."pos"()
  # rx literal  "."
    add $I11, rx81_pos, 1
    gt $I11, rx81_eos, rx81_fail
    sub $I11, rx81_pos, rx81_off
    substr $S10, rx81_tgt, $I11, 1
    ne $S10, ".", rx81_fail
    add rx81_pos, 1
    (rx81_rep) = rx81_cur."!mark_commit"($I88)
    rx81_cur."!mark_push"(rx81_rep, rx81_pos, $I88)
    goto rxquantr87_loop
  rxquantr87_done:
  # rx subrule "identifier" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."identifier"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("class_name=identifier")
    rx81_pos = $P10."pos"()
.annotate 'line', 52
    goto alt86_end
  alt86_1:
.annotate 'line', 54
  # rx subrule "panic" subtype=method negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."panic"("Invalid namespace or class name")
    unless $P10, rx81_fail
    rx81_pos = $P10."pos"()
  alt86_end:
.annotate 'line', 52
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "class_identifier")
    rx81_cur."!cursor_debug"("PASS  ", "class_identifier", " at pos=", rx81_pos)
    .return (rx81_cur)
  rx81_fail:
.annotate 'line', 9
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    rx81_cur."!cursor_debug"("FAIL  ", "class_identifier")
    .return (rx81_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__class_identifier"  :subid("27_1283117834.77257") :method
.annotate 'line', 9
    $P83 = self."!PREFIX__!subrule"("", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    push $P84, ""
    .return ($P84)
.end


.namespace ["mantra";"Grammar"]
.sub "identifier"  :subid("28_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx90_tgt
    .local int rx90_pos
    .local int rx90_off
    .local int rx90_eos
    .local int rx90_rep
    .local pmc rx90_cur
    (rx90_cur, rx90_pos, rx90_tgt) = self."!cursor_start"()
    rx90_cur."!cursor_debug"("START ", "identifier")
    rx90_cur."!cursor_caparray"("alnum")
    .lex unicode:"$\x{a2}", rx90_cur
    .local pmc match
    .lex "$/", match
    length rx90_eos, rx90_tgt
    set rx90_off, 0
    lt rx90_pos, 2, rx90_start
    sub rx90_off, rx90_pos, 1
    substr rx90_tgt, rx90_tgt, rx90_off
  rx90_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan94_done
    goto rxscan94_scan
  rxscan94_loop:
    ($P10) = rx90_cur."from"()
    inc $P10
    set rx90_pos, $P10
    ge rx90_pos, rx90_eos, rxscan94_done
  rxscan94_scan:
    set_addr $I10, rxscan94_loop
    rx90_cur."!mark_push"(0, rx90_pos, $I10)
  rxscan94_done:
.annotate 'line', 60
  # rx subrule "alpha" subtype=capture negate=
    rx90_cur."!cursor_pos"(rx90_pos)
    $P10 = rx90_cur."alpha"()
    unless $P10, rx90_fail
    rx90_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("alpha")
    rx90_pos = $P10."pos"()
  # rx rxquantr95 ** 0..*
    set_addr $I96, rxquantr95_done
    rx90_cur."!mark_push"(0, rx90_pos, $I96)
  rxquantr95_loop:
  # rx subrule "alnum" subtype=capture negate=
    rx90_cur."!cursor_pos"(rx90_pos)
    $P10 = rx90_cur."alnum"()
    unless $P10, rx90_fail
    rx90_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("alnum")
    rx90_pos = $P10."pos"()
    (rx90_rep) = rx90_cur."!mark_commit"($I96)
    rx90_cur."!mark_push"(rx90_rep, rx90_pos, $I96)
    goto rxquantr95_loop
  rxquantr95_done:
.annotate 'line', 59
  # rx pass
    rx90_cur."!cursor_pass"(rx90_pos, "identifier")
    rx90_cur."!cursor_debug"("PASS  ", "identifier", " at pos=", rx90_pos)
    .return (rx90_cur)
  rx90_fail:
.annotate 'line', 9
    (rx90_rep, rx90_pos, $I10, $P10) = rx90_cur."!mark_fail"(0)
    lt rx90_pos, -1, rx90_done
    eq rx90_pos, -1, rx90_fail
    jump $I10
  rx90_done:
    rx90_cur."!cursor_fail"()
    rx90_cur."!cursor_debug"("FAIL  ", "identifier")
    .return (rx90_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__identifier"  :subid("29_1283117834.77257") :method
.annotate 'line', 9
    $P92 = self."!PREFIX__!subrule"("alpha", "")
    new $P93, "ResizablePMCArray"
    push $P93, $P92
    .return ($P93)
.end


.namespace ["mantra";"Grammar"]
.sub "method_definition"  :subid("30_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    (rx98_cur, rx98_pos, rx98_tgt) = self."!cursor_start"()
    rx98_cur."!cursor_debug"("START ", "method_definition")
    .lex unicode:"$\x{a2}", rx98_cur
    .local pmc match
    .lex "$/", match
    length rx98_eos, rx98_tgt
    set rx98_off, 0
    lt rx98_pos, 2, rx98_start
    sub rx98_off, rx98_pos, 1
    substr rx98_tgt, rx98_tgt, rx98_off
  rx98_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan101_done
    goto rxscan101_scan
  rxscan101_loop:
    ($P10) = rx98_cur."from"()
    inc $P10
    set rx98_pos, $P10
    ge rx98_pos, rx98_eos, rxscan101_done
  rxscan101_scan:
    set_addr $I10, rxscan101_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxscan101_done:
.annotate 'line', 65
  # rx subrule "ws" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."ws"()
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
.annotate 'line', 66
  # rx subrule "begin_method_definition" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."begin_method_definition"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("begin_method_definition")
    rx98_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."ws"()
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
.annotate 'line', 67
  # rx literal  "{"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 1
    ne $S10, "{", rx98_fail
    add rx98_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."ws"()
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  # rx subrule "statement_list" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."statement_list"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement_list")
    rx98_pos = $P10."pos"()
  alt105_0:
    set_addr $I10, alt105_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "}"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 1
    ne $S10, "}", rx98_fail
    add rx98_pos, 1
    goto alt105_end
  alt105_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."FAILGOAL"("'}'")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt105_end:
  # rx subrule "ws" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."ws"()
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
.annotate 'line', 65
  # rx pass
    rx98_cur."!cursor_pass"(rx98_pos, "method_definition")
    rx98_cur."!cursor_debug"("PASS  ", "method_definition", " at pos=", rx98_pos)
    .return (rx98_cur)
  rx98_fail:
.annotate 'line', 9
    (rx98_rep, rx98_pos, $I10, $P10) = rx98_cur."!mark_fail"(0)
    lt rx98_pos, -1, rx98_done
    eq rx98_pos, -1, rx98_fail
    jump $I10
  rx98_done:
    rx98_cur."!cursor_fail"()
    rx98_cur."!cursor_debug"("FAIL  ", "method_definition")
    .return (rx98_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__method_definition"  :subid("31_1283117834.77257") :method
.annotate 'line', 9
    new $P100, "ResizablePMCArray"
    push $P100, ""
    .return ($P100)
.end


.namespace ["mantra";"Grammar"]
.sub "begin_method_definition"  :subid("32_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx109_tgt
    .local int rx109_pos
    .local int rx109_off
    .local int rx109_eos
    .local int rx109_rep
    .local pmc rx109_cur
    (rx109_cur, rx109_pos, rx109_tgt) = self."!cursor_start"()
    rx109_cur."!cursor_debug"("START ", "begin_method_definition")
    .lex unicode:"$\x{a2}", rx109_cur
    .local pmc match
    .lex "$/", match
    length rx109_eos, rx109_tgt
    set rx109_off, 0
    lt rx109_pos, 2, rx109_start
    sub rx109_off, rx109_pos, 1
    substr rx109_tgt, rx109_tgt, rx109_off
  rx109_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan115_done
    goto rxscan115_scan
  rxscan115_loop:
    ($P10) = rx109_cur."from"()
    inc $P10
    set rx109_pos, $P10
    ge rx109_pos, rx109_eos, rxscan115_done
  rxscan115_scan:
    set_addr $I10, rxscan115_loop
    rx109_cur."!mark_push"(0, rx109_pos, $I10)
  rxscan115_done:
  alt116_0:
.annotate 'line', 70
    set_addr $I10, alt116_1
    rx109_cur."!mark_push"(0, rx109_pos, $I10)
.annotate 'line', 71
  # rx subrule "keyword_method" subtype=capture negate=
    rx109_cur."!cursor_pos"(rx109_pos)
    $P10 = rx109_cur."keyword_method"()
    unless $P10, rx109_fail
    rx109_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("keyword_method")
    rx109_pos = $P10."pos"()
    goto alt116_end
  alt116_1:
    set_addr $I10, alt116_2
    rx109_cur."!mark_push"(0, rx109_pos, $I10)
.annotate 'line', 72
  # rx subrule "binary_method" subtype=capture negate=
    rx109_cur."!cursor_pos"(rx109_pos)
    $P10 = rx109_cur."binary_method"()
    unless $P10, rx109_fail
    rx109_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binary_method")
    rx109_pos = $P10."pos"()
    goto alt116_end
  alt116_2:
.annotate 'line', 73
  # rx subrule "unary_method" subtype=capture negate=
    rx109_cur."!cursor_pos"(rx109_pos)
    $P10 = rx109_cur."unary_method"()
    unless $P10, rx109_fail
    rx109_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("unary_method")
    rx109_pos = $P10."pos"()
  alt116_end:
.annotate 'line', 70
  # rx pass
    rx109_cur."!cursor_pass"(rx109_pos, "begin_method_definition")
    rx109_cur."!cursor_debug"("PASS  ", "begin_method_definition", " at pos=", rx109_pos)
    .return (rx109_cur)
  rx109_fail:
.annotate 'line', 9
    (rx109_rep, rx109_pos, $I10, $P10) = rx109_cur."!mark_fail"(0)
    lt rx109_pos, -1, rx109_done
    eq rx109_pos, -1, rx109_fail
    jump $I10
  rx109_done:
    rx109_cur."!cursor_fail"()
    rx109_cur."!cursor_debug"("FAIL  ", "begin_method_definition")
    .return (rx109_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__begin_method_definition"  :subid("33_1283117834.77257") :method
.annotate 'line', 9
    $P111 = self."!PREFIX__!subrule"("unary_method", "")
    $P112 = self."!PREFIX__!subrule"("binary_method", "")
    $P113 = self."!PREFIX__!subrule"("keyword_method", "")
    new $P114, "ResizablePMCArray"
    push $P114, $P111
    push $P114, $P112
    push $P114, $P113
    .return ($P114)
.end


.namespace ["mantra";"Grammar"]
.sub "keyword_method"  :subid("34_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx118_tgt
    .local int rx118_pos
    .local int rx118_off
    .local int rx118_eos
    .local int rx118_rep
    .local pmc rx118_cur
    (rx118_cur, rx118_pos, rx118_tgt) = self."!cursor_start"()
    rx118_cur."!cursor_debug"("START ", "keyword_method")
    rx118_cur."!cursor_caparray"("param", "method_name", "ident")
    .lex unicode:"$\x{a2}", rx118_cur
    .local pmc match
    .lex "$/", match
    length rx118_eos, rx118_tgt
    set rx118_off, 0
    lt rx118_pos, 2, rx118_start
    sub rx118_off, rx118_pos, 1
    substr rx118_tgt, rx118_tgt, rx118_off
  rx118_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan122_done
    goto rxscan122_scan
  rxscan122_loop:
    ($P10) = rx118_cur."from"()
    inc $P10
    set rx118_pos, $P10
    ge rx118_pos, rx118_eos, rxscan122_done
  rxscan122_scan:
    set_addr $I10, rxscan122_loop
    rx118_cur."!mark_push"(0, rx118_pos, $I10)
  rxscan122_done:
.annotate 'line', 77
  # rx subrule "ident" subtype=capture negate=
    rx118_cur."!cursor_pos"(rx118_pos)
    $P10 = rx118_cur."ident"()
    unless $P10, rx118_fail
    rx118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_name=ident")
    rx118_pos = $P10."pos"()
  # rx literal  ":"
    add $I11, rx118_pos, 1
    gt $I11, rx118_eos, rx118_fail
    sub $I11, rx118_pos, rx118_off
    substr $S10, rx118_tgt, $I11, 1
    ne $S10, ":", rx118_fail
    add rx118_pos, 1
  # rx rxquantr123 ** 0..*
    set_addr $I124, rxquantr123_done
    rx118_cur."!mark_push"(0, rx118_pos, $I124)
  rxquantr123_loop:
  # rx enumcharlist negate=0 
    ge rx118_pos, rx118_eos, rx118_fail
    sub $I10, rx118_pos, rx118_off
    substr $S10, rx118_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx118_fail
    inc rx118_pos
    (rx118_rep) = rx118_cur."!mark_commit"($I124)
    rx118_cur."!mark_push"(rx118_rep, rx118_pos, $I124)
    goto rxquantr123_loop
  rxquantr123_done:
  # rx subrule "ident" subtype=capture negate=
    rx118_cur."!cursor_pos"(rx118_pos)
    $P10 = rx118_cur."ident"()
    unless $P10, rx118_fail
    rx118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param=ident")
    rx118_pos = $P10."pos"()
  # rx rxquantr125 ** 1..*
    set_addr $I126, rxquantr125_done
    rx118_cur."!mark_push"(0, -1, $I126)
  rxquantr125_loop:
  # rx enumcharlist negate=0 
    ge rx118_pos, rx118_eos, rx118_fail
    sub $I10, rx118_pos, rx118_off
    substr $S10, rx118_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx118_fail
    inc rx118_pos
    (rx118_rep) = rx118_cur."!mark_commit"($I126)
    rx118_cur."!mark_push"(rx118_rep, rx118_pos, $I126)
    goto rxquantr125_loop
  rxquantr125_done:
.annotate 'line', 78
  # rx rxquantr127 ** 0..*
    set_addr $I130, rxquantr127_done
    rx118_cur."!mark_push"(0, rx118_pos, $I130)
  rxquantr127_loop:
  # rx subrule "ident" subtype=capture negate=
    rx118_cur."!cursor_pos"(rx118_pos)
    $P10 = rx118_cur."ident"()
    unless $P10, rx118_fail
    rx118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_name=ident")
    rx118_pos = $P10."pos"()
  # rx literal  ":"
    add $I11, rx118_pos, 1
    gt $I11, rx118_eos, rx118_fail
    sub $I11, rx118_pos, rx118_off
    substr $S10, rx118_tgt, $I11, 1
    ne $S10, ":", rx118_fail
    add rx118_pos, 1
  # rx rxquantr128 ** 0..*
    set_addr $I129, rxquantr128_done
    rx118_cur."!mark_push"(0, rx118_pos, $I129)
  rxquantr128_loop:
  # rx enumcharlist negate=0 
    ge rx118_pos, rx118_eos, rx118_fail
    sub $I10, rx118_pos, rx118_off
    substr $S10, rx118_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx118_fail
    inc rx118_pos
    (rx118_rep) = rx118_cur."!mark_commit"($I129)
    rx118_cur."!mark_push"(rx118_rep, rx118_pos, $I129)
    goto rxquantr128_loop
  rxquantr128_done:
  # rx subrule "ident" subtype=capture negate=
    rx118_cur."!cursor_pos"(rx118_pos)
    $P10 = rx118_cur."ident"()
    unless $P10, rx118_fail
    rx118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param=ident")
    rx118_pos = $P10."pos"()
    (rx118_rep) = rx118_cur."!mark_commit"($I130)
    rx118_cur."!mark_push"(rx118_rep, rx118_pos, $I130)
    goto rxquantr127_loop
  rxquantr127_done:
.annotate 'line', 76
  # rx pass
    rx118_cur."!cursor_pass"(rx118_pos, "keyword_method")
    rx118_cur."!cursor_debug"("PASS  ", "keyword_method", " at pos=", rx118_pos)
    .return (rx118_cur)
  rx118_fail:
.annotate 'line', 9
    (rx118_rep, rx118_pos, $I10, $P10) = rx118_cur."!mark_fail"(0)
    lt rx118_pos, -1, rx118_done
    eq rx118_pos, -1, rx118_fail
    jump $I10
  rx118_done:
    rx118_cur."!cursor_fail"()
    rx118_cur."!cursor_debug"("FAIL  ", "keyword_method")
    .return (rx118_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__keyword_method"  :subid("35_1283117834.77257") :method
.annotate 'line', 9
    $P120 = self."!PREFIX__!subrule"("method_name=ident", "")
    new $P121, "ResizablePMCArray"
    push $P121, $P120
    .return ($P121)
.end


.namespace ["mantra";"Grammar"]
.sub "binary_method"  :subid("36_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx132_tgt
    .local int rx132_pos
    .local int rx132_off
    .local int rx132_eos
    .local int rx132_rep
    .local pmc rx132_cur
    (rx132_cur, rx132_pos, rx132_tgt) = self."!cursor_start"()
    rx132_cur."!cursor_debug"("START ", "binary_method")
    .lex unicode:"$\x{a2}", rx132_cur
    .local pmc match
    .lex "$/", match
    length rx132_eos, rx132_tgt
    set rx132_off, 0
    lt rx132_pos, 2, rx132_start
    sub rx132_off, rx132_pos, 1
    substr rx132_tgt, rx132_tgt, rx132_off
  rx132_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan136_done
    goto rxscan136_scan
  rxscan136_loop:
    ($P10) = rx132_cur."from"()
    inc $P10
    set rx132_pos, $P10
    ge rx132_pos, rx132_eos, rxscan136_done
  rxscan136_scan:
    set_addr $I10, rxscan136_loop
    rx132_cur."!mark_push"(0, rx132_pos, $I10)
  rxscan136_done:
.annotate 'line', 82
  # rx subrule "binary_method_name" subtype=capture negate=
    rx132_cur."!cursor_pos"(rx132_pos)
    $P10 = rx132_cur."binary_method_name"()
    unless $P10, rx132_fail
    rx132_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_name=binary_method_name")
    rx132_pos = $P10."pos"()
  # rx rxquantr137 ** 0..*
    set_addr $I138, rxquantr137_done
    rx132_cur."!mark_push"(0, rx132_pos, $I138)
  rxquantr137_loop:
  # rx enumcharlist negate=0 
    ge rx132_pos, rx132_eos, rx132_fail
    sub $I10, rx132_pos, rx132_off
    substr $S10, rx132_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx132_fail
    inc rx132_pos
    (rx132_rep) = rx132_cur."!mark_commit"($I138)
    rx132_cur."!mark_push"(rx132_rep, rx132_pos, $I138)
    goto rxquantr137_loop
  rxquantr137_done:
  # rx subrule "ident" subtype=capture negate=
    rx132_cur."!cursor_pos"(rx132_pos)
    $P10 = rx132_cur."ident"()
    unless $P10, rx132_fail
    rx132_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("param=ident")
    rx132_pos = $P10."pos"()
.annotate 'line', 81
  # rx pass
    rx132_cur."!cursor_pass"(rx132_pos, "binary_method")
    rx132_cur."!cursor_debug"("PASS  ", "binary_method", " at pos=", rx132_pos)
    .return (rx132_cur)
  rx132_fail:
.annotate 'line', 9
    (rx132_rep, rx132_pos, $I10, $P10) = rx132_cur."!mark_fail"(0)
    lt rx132_pos, -1, rx132_done
    eq rx132_pos, -1, rx132_fail
    jump $I10
  rx132_done:
    rx132_cur."!cursor_fail"()
    rx132_cur."!cursor_debug"("FAIL  ", "binary_method")
    .return (rx132_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__binary_method"  :subid("37_1283117834.77257") :method
.annotate 'line', 9
    $P134 = self."!PREFIX__!subrule"("method_name=binary_method_name", "")
    new $P135, "ResizablePMCArray"
    push $P135, $P134
    .return ($P135)
.end


.namespace ["mantra";"Grammar"]
.sub "unary_method"  :subid("38_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx140_tgt
    .local int rx140_pos
    .local int rx140_off
    .local int rx140_eos
    .local int rx140_rep
    .local pmc rx140_cur
    (rx140_cur, rx140_pos, rx140_tgt) = self."!cursor_start"()
    rx140_cur."!cursor_debug"("START ", "unary_method")
    .lex unicode:"$\x{a2}", rx140_cur
    .local pmc match
    .lex "$/", match
    length rx140_eos, rx140_tgt
    set rx140_off, 0
    lt rx140_pos, 2, rx140_start
    sub rx140_off, rx140_pos, 1
    substr rx140_tgt, rx140_tgt, rx140_off
  rx140_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan144_done
    goto rxscan144_scan
  rxscan144_loop:
    ($P10) = rx140_cur."from"()
    inc $P10
    set rx140_pos, $P10
    ge rx140_pos, rx140_eos, rxscan144_done
  rxscan144_scan:
    set_addr $I10, rxscan144_loop
    rx140_cur."!mark_push"(0, rx140_pos, $I10)
  rxscan144_done:
.annotate 'line', 86
  # rx subrule "ident" subtype=capture negate=
    rx140_cur."!cursor_pos"(rx140_pos)
    $P10 = rx140_cur."ident"()
    unless $P10, rx140_fail
    rx140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_name=ident")
    rx140_pos = $P10."pos"()
.annotate 'line', 85
  # rx pass
    rx140_cur."!cursor_pass"(rx140_pos, "unary_method")
    rx140_cur."!cursor_debug"("PASS  ", "unary_method", " at pos=", rx140_pos)
    .return (rx140_cur)
  rx140_fail:
.annotate 'line', 9
    (rx140_rep, rx140_pos, $I10, $P10) = rx140_cur."!mark_fail"(0)
    lt rx140_pos, -1, rx140_done
    eq rx140_pos, -1, rx140_fail
    jump $I10
  rx140_done:
    rx140_cur."!cursor_fail"()
    rx140_cur."!cursor_debug"("FAIL  ", "unary_method")
    .return (rx140_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__unary_method"  :subid("39_1283117834.77257") :method
.annotate 'line', 9
    $P142 = self."!PREFIX__!subrule"("method_name=ident", "")
    new $P143, "ResizablePMCArray"
    push $P143, $P142
    .return ($P143)
.end


.namespace ["mantra";"Grammar"]
.sub "statement_list"  :subid("40_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    (rx146_cur, rx146_pos, rx146_tgt) = self."!cursor_start"()
    rx146_cur."!cursor_debug"("START ", "statement_list")
    rx146_cur."!cursor_caparray"("statement")
    .lex unicode:"$\x{a2}", rx146_cur
    .local pmc match
    .lex "$/", match
    length rx146_eos, rx146_tgt
    set rx146_off, 0
    lt rx146_pos, 2, rx146_start
    sub rx146_off, rx146_pos, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan149_done
    goto rxscan149_scan
  rxscan149_loop:
    ($P10) = rx146_cur."from"()
    inc $P10
    set rx146_pos, $P10
    ge rx146_pos, rx146_eos, rxscan149_done
  rxscan149_scan:
    set_addr $I10, rxscan149_loop
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  rxscan149_done:
.annotate 'line', 90
  # rx subrule "ws" subtype=method negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."ws"()
    unless $P10, rx146_fail
    rx146_pos = $P10."pos"()
.annotate 'line', 91
  # rx rxquantr151 ** 0..*
    set_addr $I156, rxquantr151_done
    rx146_cur."!mark_push"(0, rx146_pos, $I156)
  rxquantr151_loop:
  # rx subrule "ws" subtype=method negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."ws"()
    unless $P10, rx146_fail
    rx146_pos = $P10."pos"()
  # rx rxquantr153 ** 1..*
    set_addr $I154, rxquantr153_done
    rx146_cur."!mark_push"(0, -1, $I154)
  rxquantr153_loop:
  # rx subrule "statement" subtype=capture negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."statement"()
    unless $P10, rx146_fail
    rx146_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("statement")
    rx146_pos = $P10."pos"()
    (rx146_rep) = rx146_cur."!mark_commit"($I154)
    rx146_cur."!mark_push"(rx146_rep, rx146_pos, $I154)
  # rx literal  "."
    add $I11, rx146_pos, 1
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    substr $S10, rx146_tgt, $I11, 1
    ne $S10, ".", rx146_fail
    add rx146_pos, 1
    goto rxquantr153_loop
  rxquantr153_done:
  # rx subrule "ws" subtype=method negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."ws"()
    unless $P10, rx146_fail
    rx146_pos = $P10."pos"()
    (rx146_rep) = rx146_cur."!mark_commit"($I156)
    rx146_cur."!mark_push"(rx146_rep, rx146_pos, $I156)
    goto rxquantr151_loop
  rxquantr151_done:
  # rx subrule "ws" subtype=method negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."ws"()
    unless $P10, rx146_fail
    rx146_pos = $P10."pos"()
.annotate 'line', 90
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "statement_list")
    rx146_cur."!cursor_debug"("PASS  ", "statement_list", " at pos=", rx146_pos)
    .return (rx146_cur)
  rx146_fail:
.annotate 'line', 9
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    rx146_cur."!cursor_debug"("FAIL  ", "statement_list")
    .return (rx146_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__statement_list"  :subid("41_1283117834.77257") :method
.annotate 'line', 9
    new $P148, "ResizablePMCArray"
    push $P148, ""
    .return ($P148)
.end


.namespace ["mantra";"Grammar"]
.sub "statement"  :subid("42_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx159_tgt
    .local int rx159_pos
    .local int rx159_off
    .local int rx159_eos
    .local int rx159_rep
    .local pmc rx159_cur
    (rx159_cur, rx159_pos, rx159_tgt) = self."!cursor_start"()
    rx159_cur."!cursor_debug"("START ", "statement")
    .lex unicode:"$\x{a2}", rx159_cur
    .local pmc match
    .lex "$/", match
    length rx159_eos, rx159_tgt
    set rx159_off, 0
    lt rx159_pos, 2, rx159_start
    sub rx159_off, rx159_pos, 1
    substr rx159_tgt, rx159_tgt, rx159_off
  rx159_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan162_done
    goto rxscan162_scan
  rxscan162_loop:
    ($P10) = rx159_cur."from"()
    inc $P10
    set rx159_pos, $P10
    ge rx159_pos, rx159_eos, rxscan162_done
  rxscan162_scan:
    set_addr $I10, rxscan162_loop
    rx159_cur."!mark_push"(0, rx159_pos, $I10)
  rxscan162_done:
  alt163_0:
.annotate 'line', 95
    set_addr $I10, alt163_1
    rx159_cur."!mark_push"(0, rx159_pos, $I10)
.annotate 'line', 96
  # rx subrule "ws" subtype=method negate=
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."ws"()
    unless $P10, rx159_fail
    rx159_pos = $P10."pos"()
  # rx subrule "expression" subtype=capture negate=
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."expression"()
    unless $P10, rx159_fail
    rx159_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("expression")
    rx159_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."ws"()
    unless $P10, rx159_fail
    rx159_pos = $P10."pos"()
    goto alt163_end
  alt163_1:
.annotate 'line', 97
  # rx subrule "ws" subtype=method negate=
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."ws"()
    unless $P10, rx159_fail
    rx159_pos = $P10."pos"()
  # rx literal  "."
    add $I11, rx159_pos, 1
    gt $I11, rx159_eos, rx159_fail
    sub $I11, rx159_pos, rx159_off
    substr $S10, rx159_tgt, $I11, 1
    ne $S10, ".", rx159_fail
    add rx159_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."ws"()
    unless $P10, rx159_fail
    rx159_pos = $P10."pos"()
  alt163_end:
.annotate 'line', 95
  # rx pass
    rx159_cur."!cursor_pass"(rx159_pos, "statement")
    rx159_cur."!cursor_debug"("PASS  ", "statement", " at pos=", rx159_pos)
    .return (rx159_cur)
  rx159_fail:
.annotate 'line', 9
    (rx159_rep, rx159_pos, $I10, $P10) = rx159_cur."!mark_fail"(0)
    lt rx159_pos, -1, rx159_done
    eq rx159_pos, -1, rx159_fail
    jump $I10
  rx159_done:
    rx159_cur."!cursor_fail"()
    rx159_cur."!cursor_debug"("FAIL  ", "statement")
    .return (rx159_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__statement"  :subid("43_1283117834.77257") :method
.annotate 'line', 9
    new $P161, "ResizablePMCArray"
    push $P161, ""
    push $P161, ""
    .return ($P161)
.end


.namespace ["mantra";"Grammar"]
.sub "return_statement"  :subid("44_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    (rx169_cur, rx169_pos, rx169_tgt) = self."!cursor_start"()
    rx169_cur."!cursor_debug"("START ", "return_statement")
    .lex unicode:"$\x{a2}", rx169_cur
    .local pmc match
    .lex "$/", match
    length rx169_eos, rx169_tgt
    set rx169_off, 0
    lt rx169_pos, 2, rx169_start
    sub rx169_off, rx169_pos, 1
    substr rx169_tgt, rx169_tgt, rx169_off
  rx169_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan172_done
    goto rxscan172_scan
  rxscan172_loop:
    ($P10) = rx169_cur."from"()
    inc $P10
    set rx169_pos, $P10
    ge rx169_pos, rx169_eos, rxscan172_done
  rxscan172_scan:
    set_addr $I10, rxscan172_loop
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  rxscan172_done:
.annotate 'line', 100
  # rx subrule "ws" subtype=method negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."ws"()
    unless $P10, rx169_fail
    rx169_pos = $P10."pos"()
.annotate 'line', 101
  # rx literal  "^"
    add $I11, rx169_pos, 1
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    substr $S10, rx169_tgt, $I11, 1
    ne $S10, "^", rx169_fail
    add rx169_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."ws"()
    unless $P10, rx169_fail
    rx169_pos = $P10."pos"()
  # rx subrule "basic_expression" subtype=capture negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."basic_expression"()
    unless $P10, rx169_fail
    rx169_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("basic_expression")
    rx169_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."ws"()
    unless $P10, rx169_fail
    rx169_pos = $P10."pos"()
.annotate 'line', 100
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "return_statement")
    rx169_cur."!cursor_debug"("PASS  ", "return_statement", " at pos=", rx169_pos)
    .return (rx169_cur)
  rx169_fail:
.annotate 'line', 9
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    rx169_cur."!cursor_debug"("FAIL  ", "return_statement")
    .return (rx169_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__return_statement"  :subid("45_1283117834.77257") :method
.annotate 'line', 9
    new $P171, "ResizablePMCArray"
    push $P171, ""
    .return ($P171)
.end


.namespace ["mantra";"Grammar"]
.sub "expression"  :subid("46_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx177_tgt
    .local int rx177_pos
    .local int rx177_off
    .local int rx177_eos
    .local int rx177_rep
    .local pmc rx177_cur
    (rx177_cur, rx177_pos, rx177_tgt) = self."!cursor_start"()
    rx177_cur."!cursor_debug"("START ", "expression")
    .lex unicode:"$\x{a2}", rx177_cur
    .local pmc match
    .lex "$/", match
    length rx177_eos, rx177_tgt
    set rx177_off, 0
    lt rx177_pos, 2, rx177_start
    sub rx177_off, rx177_pos, 1
    substr rx177_tgt, rx177_tgt, rx177_off
  rx177_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan180_done
    goto rxscan180_scan
  rxscan180_loop:
    ($P10) = rx177_cur."from"()
    inc $P10
    set rx177_pos, $P10
    ge rx177_pos, rx177_eos, rxscan180_done
  rxscan180_scan:
    set_addr $I10, rxscan180_loop
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
  rxscan180_done:
  alt181_0:
.annotate 'line', 104
    set_addr $I10, alt181_1
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
.annotate 'line', 105
  # rx subrule "ws" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."ws"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
  # rx subrule "assignment" subtype=capture negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."assignment"()
    unless $P10, rx177_fail
    rx177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assignment")
    rx177_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."ws"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
    goto alt181_end
  alt181_1:
    set_addr $I10, alt181_2
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
.annotate 'line', 106
  # rx subrule "ws" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."ws"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
  # rx subrule "return_statement" subtype=capture negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."return_statement"()
    unless $P10, rx177_fail
    rx177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("return_statement")
    rx177_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."ws"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
    goto alt181_end
  alt181_2:
.annotate 'line', 107
  # rx subrule "ws" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."ws"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
  # rx subrule "basic_expression" subtype=capture negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."basic_expression"()
    unless $P10, rx177_fail
    rx177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("basic_expression")
    rx177_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."ws"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
  alt181_end:
.annotate 'line', 104
  # rx pass
    rx177_cur."!cursor_pass"(rx177_pos, "expression")
    rx177_cur."!cursor_debug"("PASS  ", "expression", " at pos=", rx177_pos)
    .return (rx177_cur)
  rx177_fail:
.annotate 'line', 9
    (rx177_rep, rx177_pos, $I10, $P10) = rx177_cur."!mark_fail"(0)
    lt rx177_pos, -1, rx177_done
    eq rx177_pos, -1, rx177_fail
    jump $I10
  rx177_done:
    rx177_cur."!cursor_fail"()
    rx177_cur."!cursor_debug"("FAIL  ", "expression")
    .return (rx177_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__expression"  :subid("47_1283117834.77257") :method
.annotate 'line', 9
    new $P179, "ResizablePMCArray"
    push $P179, ""
    push $P179, ""
    push $P179, ""
    .return ($P179)
.end


.namespace ["mantra";"Grammar"]
.sub "basic_expression"  :subid("48_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    (rx189_cur, rx189_pos, rx189_tgt) = self."!cursor_start"()
    rx189_cur."!cursor_debug"("START ", "basic_expression")
    .lex unicode:"$\x{a2}", rx189_cur
    .local pmc match
    .lex "$/", match
    length rx189_eos, rx189_tgt
    set rx189_off, 0
    lt rx189_pos, 2, rx189_start
    sub rx189_off, rx189_pos, 1
    substr rx189_tgt, rx189_tgt, rx189_off
  rx189_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan192_done
    goto rxscan192_scan
  rxscan192_loop:
    ($P10) = rx189_cur."from"()
    inc $P10
    set rx189_pos, $P10
    ge rx189_pos, rx189_eos, rxscan192_done
  rxscan192_scan:
    set_addr $I10, rxscan192_loop
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  rxscan192_done:
  alt193_0:
.annotate 'line', 110
    set_addr $I10, alt193_1
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
.annotate 'line', 111
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
  # rx subrule "primitive" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."primitive"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("primitive")
    rx189_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
    goto alt193_end
  alt193_1:
    set_addr $I10, alt193_2
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
.annotate 'line', 112
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
  # rx subrule "message" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."message"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("message")
    rx189_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
    goto alt193_end
  alt193_2:
.annotate 'line', 113
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
  # rx subrule "primary" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."primary"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("primary")
    rx189_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."ws"()
    unless $P10, rx189_fail
    rx189_pos = $P10."pos"()
  alt193_end:
.annotate 'line', 110
  # rx pass
    rx189_cur."!cursor_pass"(rx189_pos, "basic_expression")
    rx189_cur."!cursor_debug"("PASS  ", "basic_expression", " at pos=", rx189_pos)
    .return (rx189_cur)
  rx189_fail:
.annotate 'line', 9
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    rx189_cur."!cursor_debug"("FAIL  ", "basic_expression")
    .return (rx189_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__basic_expression"  :subid("49_1283117834.77257") :method
.annotate 'line', 9
    new $P191, "ResizablePMCArray"
    push $P191, ""
    push $P191, ""
    push $P191, ""
    .return ($P191)
.end


.namespace ["mantra";"Grammar"]
.sub "message"  :subid("50_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx201_tgt
    .local int rx201_pos
    .local int rx201_off
    .local int rx201_eos
    .local int rx201_rep
    .local pmc rx201_cur
    (rx201_cur, rx201_pos, rx201_tgt) = self."!cursor_start"()
    rx201_cur."!cursor_debug"("START ", "message")
    rx201_cur."!cursor_caparray"("keyword_third", "unary_method", "binary_second", "unary_first", "binary_message", "keyword_message")
    .lex unicode:"$\x{a2}", rx201_cur
    .local pmc match
    .lex "$/", match
    length rx201_eos, rx201_tgt
    set rx201_off, 0
    lt rx201_pos, 2, rx201_start
    sub rx201_off, rx201_pos, 1
    substr rx201_tgt, rx201_tgt, rx201_off
  rx201_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan204_done
    goto rxscan204_scan
  rxscan204_loop:
    ($P10) = rx201_cur."from"()
    inc $P10
    set rx201_pos, $P10
    ge rx201_pos, rx201_eos, rxscan204_done
  rxscan204_scan:
    set_addr $I10, rxscan204_loop
    rx201_cur."!mark_push"(0, rx201_pos, $I10)
  rxscan204_done:
.annotate 'line', 116
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
.annotate 'line', 117
  # rx subrule "primary" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."primary"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("primary")
    rx201_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  alt207_0:
.annotate 'line', 118
    set_addr $I10, alt207_1
    rx201_cur."!mark_push"(0, rx201_pos, $I10)
.annotate 'line', 119
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  # rx subrule "keyword_message" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."keyword_message"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("keyword_first=keyword_message")
    rx201_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
    goto alt207_end
  alt207_1:
    set_addr $I10, alt207_2
    rx201_cur."!mark_push"(0, rx201_pos, $I10)
.annotate 'line', 120
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  # rx subrule "binary_message" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."binary_message"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binary_first=binary_message")
    rx201_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
    goto alt207_end
  alt207_2:
.annotate 'line', 121
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  # rx rxquantr213 ** 1..*
    set_addr $I214, rxquantr213_done
    rx201_cur."!mark_push"(0, -1, $I214)
  rxquantr213_loop:
  # rx subrule "unary_method" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."unary_method"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("unary_first=unary_method")
    rx201_pos = $P10."pos"()
    (rx201_rep) = rx201_cur."!mark_commit"($I214)
    rx201_cur."!mark_push"(rx201_rep, rx201_pos, $I214)
    goto rxquantr213_loop
  rxquantr213_done:
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  # rx rxquantr216 ** 0..*
    set_addr $I217, rxquantr216_done
    rx201_cur."!mark_push"(0, rx201_pos, $I217)
  rxquantr216_loop:
  # rx subrule "binary_message" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."binary_message"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binary_second=binary_message")
    rx201_pos = $P10."pos"()
    (rx201_rep) = rx201_cur."!mark_commit"($I217)
    rx201_cur."!mark_push"(rx201_rep, rx201_pos, $I217)
    goto rxquantr216_loop
  rxquantr216_done:
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  # rx rxquantr219 ** 0..1
    set_addr $I220, rxquantr219_done
    rx201_cur."!mark_push"(0, rx201_pos, $I220)
  rxquantr219_loop:
  # rx subrule "keyword_message" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."keyword_message"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("keyword_third=keyword_message")
    rx201_pos = $P10."pos"()
    (rx201_rep) = rx201_cur."!mark_commit"($I220)
  rxquantr219_done:
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  alt207_end:
.annotate 'line', 122
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
.annotate 'line', 116
  # rx pass
    rx201_cur."!cursor_pass"(rx201_pos, "message")
    rx201_cur."!cursor_debug"("PASS  ", "message", " at pos=", rx201_pos)
    .return (rx201_cur)
  rx201_fail:
.annotate 'line', 9
    (rx201_rep, rx201_pos, $I10, $P10) = rx201_cur."!mark_fail"(0)
    lt rx201_pos, -1, rx201_done
    eq rx201_pos, -1, rx201_fail
    jump $I10
  rx201_done:
    rx201_cur."!cursor_fail"()
    rx201_cur."!cursor_debug"("FAIL  ", "message")
    .return (rx201_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__message"  :subid("51_1283117834.77257") :method
.annotate 'line', 9
    new $P203, "ResizablePMCArray"
    push $P203, ""
    .return ($P203)
.end


.namespace ["mantra";"Grammar"]
.sub "binary_message"  :subid("52_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .const 'Sub' $P242 = "56_1283117834.77257" 
    capture_lex $P242
    .const 'Sub' $P238 = "55_1283117834.77257" 
    capture_lex $P238
    .const 'Sub' $P234 = "54_1283117834.77257" 
    capture_lex $P234
    .local string rx224_tgt
    .local int rx224_pos
    .local int rx224_off
    .local int rx224_eos
    .local int rx224_rep
    .local pmc rx224_cur
    (rx224_cur, rx224_pos, rx224_tgt) = self."!cursor_start"()
    rx224_cur."!cursor_debug"("START ", "binary_message")
    rx224_cur."!cursor_caparray"("unary_method")
    .lex unicode:"$\x{a2}", rx224_cur
    .local pmc match
    .lex "$/", match
    length rx224_eos, rx224_tgt
    set rx224_off, 0
    lt rx224_pos, 2, rx224_start
    sub rx224_off, rx224_pos, 1
    substr rx224_tgt, rx224_tgt, rx224_off
  rx224_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan228_done
    goto rxscan228_scan
  rxscan228_loop:
    ($P10) = rx224_cur."from"()
    inc $P10
    set rx224_pos, $P10
    ge rx224_pos, rx224_eos, rxscan228_done
  rxscan228_scan:
    set_addr $I10, rxscan228_loop
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
  rxscan228_done:
.annotate 'line', 126
  # rx subrule "binary_method_name" subtype=capture negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."binary_method_name"()
    unless $P10, rx224_fail
    rx224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_name=binary_method_name")
    rx224_pos = $P10."pos"()
  # rx subrule "ws" subtype=capture negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."ws"()
    unless $P10, rx224_fail
    rx224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ws")
    rx224_pos = $P10."pos"()
.annotate 'line', 127
  # rx subrule "primary" subtype=capture negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."primary"()
    unless $P10, rx224_fail
    rx224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("primary")
    rx224_pos = $P10."pos"()
.annotate 'line', 134
  # rx rxquantr229 ** 0..*
    set_addr $I245, rxquantr229_done
    rx224_cur."!mark_push"(0, rx224_pos, $I245)
  rxquantr229_loop:
.annotate 'line', 128
  # rx rxquantr230 ** 0..*
    set_addr $I231, rxquantr230_done
    rx224_cur."!mark_push"(0, rx224_pos, $I231)
  rxquantr230_loop:
  # rx enumcharlist negate=0 
    ge rx224_pos, rx224_eos, rx224_fail
    sub $I10, rx224_pos, rx224_off
    substr $S10, rx224_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx224_fail
    inc rx224_pos
    (rx224_rep) = rx224_cur."!mark_commit"($I231)
    rx224_cur."!mark_push"(rx224_rep, rx224_pos, $I231)
    goto rxquantr230_loop
  rxquantr230_done:
  # rx subrule "unary_method" subtype=capture negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."unary_method"()
    unless $P10, rx224_fail
    rx224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("unary_method")
    rx224_pos = $P10."pos"()
  alt232_0:
.annotate 'line', 129
    set_addr $I10, alt232_1
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
.annotate 'line', 130
  # rx subrule "before" subtype=zerowidth negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    .const 'Sub' $P234 = "54_1283117834.77257" 
    capture_lex $P234
    $P10 = rx224_cur."before"($P234)
    unless $P10, rx224_fail
    goto alt232_end
  alt232_1:
    set_addr $I10, alt232_2
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
.annotate 'line', 131
  # rx subrule "before" subtype=zerowidth negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    .const 'Sub' $P238 = "55_1283117834.77257" 
    capture_lex $P238
    $P10 = rx224_cur."before"($P238)
    unless $P10, rx224_fail
    goto alt232_end
  alt232_2:
.annotate 'line', 132
  # rx subrule "before" subtype=zerowidth negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    .const 'Sub' $P242 = "56_1283117834.77257" 
    capture_lex $P242
    $P10 = rx224_cur."before"($P242)
    unless $P10, rx224_fail
  alt232_end:
.annotate 'line', 134
    (rx224_rep) = rx224_cur."!mark_commit"($I245)
    rx224_cur."!mark_push"(rx224_rep, rx224_pos, $I245)
    goto rxquantr229_loop
  rxquantr229_done:
.annotate 'line', 125
  # rx pass
    rx224_cur."!cursor_pass"(rx224_pos, "binary_message")
    rx224_cur."!cursor_debug"("PASS  ", "binary_message", " at pos=", rx224_pos)
    .return (rx224_cur)
  rx224_fail:
.annotate 'line', 9
    (rx224_rep, rx224_pos, $I10, $P10) = rx224_cur."!mark_fail"(0)
    lt rx224_pos, -1, rx224_done
    eq rx224_pos, -1, rx224_fail
    jump $I10
  rx224_done:
    rx224_cur."!cursor_fail"()
    rx224_cur."!cursor_debug"("FAIL  ", "binary_message")
    .return (rx224_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__binary_message"  :subid("53_1283117834.77257") :method
.annotate 'line', 9
    $P226 = self."!PREFIX__!subrule"("method_name=binary_method_name", "")
    new $P227, "ResizablePMCArray"
    push $P227, $P226
    .return ($P227)
.end


.namespace ["mantra";"Grammar"]
.sub "_block233"  :anon :subid("54_1283117834.77257") :method :outer("52_1283117834.77257")
.annotate 'line', 130
    .local string rx235_tgt
    .local int rx235_pos
    .local int rx235_off
    .local int rx235_eos
    .local int rx235_rep
    .local pmc rx235_cur
    (rx235_cur, rx235_pos, rx235_tgt) = self."!cursor_start"()
    rx235_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx235_cur
    .local pmc match
    .lex "$/", match
    length rx235_eos, rx235_tgt
    set rx235_off, 0
    lt rx235_pos, 2, rx235_start
    sub rx235_off, rx235_pos, 1
    substr rx235_tgt, rx235_tgt, rx235_off
  rx235_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan236_done
    goto rxscan236_scan
  rxscan236_loop:
    ($P10) = rx235_cur."from"()
    inc $P10
    set rx235_pos, $P10
    ge rx235_pos, rx235_eos, rxscan236_done
  rxscan236_scan:
    set_addr $I10, rxscan236_loop
    rx235_cur."!mark_push"(0, rx235_pos, $I10)
  rxscan236_done:
  # rx subrule "ws" subtype=method negate=
    rx235_cur."!cursor_pos"(rx235_pos)
    $P10 = rx235_cur."ws"()
    unless $P10, rx235_fail
    rx235_pos = $P10."pos"()
  # rx charclass_q w r 1..-1
    sub $I10, rx235_pos, rx235_off
    find_not_cclass $I11, 8192, rx235_tgt, $I10, rx235_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx235_fail
    add rx235_pos, rx235_off, $I11
  # rx literal  ":"
    add $I11, rx235_pos, 1
    gt $I11, rx235_eos, rx235_fail
    sub $I11, rx235_pos, rx235_off
    substr $S10, rx235_tgt, $I11, 1
    ne $S10, ":", rx235_fail
    add rx235_pos, 1
  # rx pass
    rx235_cur."!cursor_pass"(rx235_pos, "")
    rx235_cur."!cursor_debug"("PASS  ", "", " at pos=", rx235_pos)
    .return (rx235_cur)
  rx235_fail:
    (rx235_rep, rx235_pos, $I10, $P10) = rx235_cur."!mark_fail"(0)
    lt rx235_pos, -1, rx235_done
    eq rx235_pos, -1, rx235_fail
    jump $I10
  rx235_done:
    rx235_cur."!cursor_fail"()
    rx235_cur."!cursor_debug"("FAIL  ", "")
    .return (rx235_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "_block237"  :anon :subid("55_1283117834.77257") :method :outer("52_1283117834.77257")
.annotate 'line', 131
    .local string rx239_tgt
    .local int rx239_pos
    .local int rx239_off
    .local int rx239_eos
    .local int rx239_rep
    .local pmc rx239_cur
    (rx239_cur, rx239_pos, rx239_tgt) = self."!cursor_start"()
    rx239_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx239_cur
    .local pmc match
    .lex "$/", match
    length rx239_eos, rx239_tgt
    set rx239_off, 0
    lt rx239_pos, 2, rx239_start
    sub rx239_off, rx239_pos, 1
    substr rx239_tgt, rx239_tgt, rx239_off
  rx239_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan240_done
    goto rxscan240_scan
  rxscan240_loop:
    ($P10) = rx239_cur."from"()
    inc $P10
    set rx239_pos, $P10
    ge rx239_pos, rx239_eos, rxscan240_done
  rxscan240_scan:
    set_addr $I10, rxscan240_loop
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  rxscan240_done:
  # rx literal  "."
    add $I11, rx239_pos, 1
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 1
    ne $S10, ".", rx239_fail
    add rx239_pos, 1
  # rx pass
    rx239_cur."!cursor_pass"(rx239_pos, "")
    rx239_cur."!cursor_debug"("PASS  ", "", " at pos=", rx239_pos)
    .return (rx239_cur)
  rx239_fail:
    (rx239_rep, rx239_pos, $I10, $P10) = rx239_cur."!mark_fail"(0)
    lt rx239_pos, -1, rx239_done
    eq rx239_pos, -1, rx239_fail
    jump $I10
  rx239_done:
    rx239_cur."!cursor_fail"()
    rx239_cur."!cursor_debug"("FAIL  ", "")
    .return (rx239_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "_block241"  :anon :subid("56_1283117834.77257") :method :outer("52_1283117834.77257")
.annotate 'line', 132
    .local string rx243_tgt
    .local int rx243_pos
    .local int rx243_off
    .local int rx243_eos
    .local int rx243_rep
    .local pmc rx243_cur
    (rx243_cur, rx243_pos, rx243_tgt) = self."!cursor_start"()
    rx243_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx243_cur
    .local pmc match
    .lex "$/", match
    length rx243_eos, rx243_tgt
    set rx243_off, 0
    lt rx243_pos, 2, rx243_start
    sub rx243_off, rx243_pos, 1
    substr rx243_tgt, rx243_tgt, rx243_off
  rx243_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan244_done
    goto rxscan244_scan
  rxscan244_loop:
    ($P10) = rx243_cur."from"()
    inc $P10
    set rx243_pos, $P10
    ge rx243_pos, rx243_eos, rxscan244_done
  rxscan244_scan:
    set_addr $I10, rxscan244_loop
    rx243_cur."!mark_push"(0, rx243_pos, $I10)
  rxscan244_done:
  # rx charclass_q s r 1..-1
    sub $I10, rx243_pos, rx243_off
    find_not_cclass $I11, 32, rx243_tgt, $I10, rx243_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx243_fail
    add rx243_pos, rx243_off, $I11
  # rx pass
    rx243_cur."!cursor_pass"(rx243_pos, "")
    rx243_cur."!cursor_debug"("PASS  ", "", " at pos=", rx243_pos)
    .return (rx243_cur)
  rx243_fail:
    (rx243_rep, rx243_pos, $I10, $P10) = rx243_cur."!mark_fail"(0)
    lt rx243_pos, -1, rx243_done
    eq rx243_pos, -1, rx243_fail
    jump $I10
  rx243_done:
    rx243_cur."!cursor_fail"()
    rx243_cur."!cursor_debug"("FAIL  ", "")
    .return (rx243_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "keyword_message"  :subid("57_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx247_tgt
    .local int rx247_pos
    .local int rx247_off
    .local int rx247_eos
    .local int rx247_rep
    .local pmc rx247_cur
    (rx247_cur, rx247_pos, rx247_tgt) = self."!cursor_start"()
    rx247_cur."!cursor_debug"("START ", "keyword_message")
    rx247_cur."!cursor_caparray"("keyword_argument", "method_name", "ws", "ident")
    .lex unicode:"$\x{a2}", rx247_cur
    .local pmc match
    .lex "$/", match
    length rx247_eos, rx247_tgt
    set rx247_off, 0
    lt rx247_pos, 2, rx247_start
    sub rx247_off, rx247_pos, 1
    substr rx247_tgt, rx247_tgt, rx247_off
  rx247_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan251_done
    goto rxscan251_scan
  rxscan251_loop:
    ($P10) = rx247_cur."from"()
    inc $P10
    set rx247_pos, $P10
    ge rx247_pos, rx247_eos, rxscan251_done
  rxscan251_scan:
    set_addr $I10, rxscan251_loop
    rx247_cur."!mark_push"(0, rx247_pos, $I10)
  rxscan251_done:
.annotate 'line', 138
  # rx subrule "ident" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."ident"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_name=ident")
    rx247_pos = $P10."pos"()
  # rx literal  ":"
    add $I11, rx247_pos, 1
    gt $I11, rx247_eos, rx247_fail
    sub $I11, rx247_pos, rx247_off
    substr $S10, rx247_tgt, $I11, 1
    ne $S10, ":", rx247_fail
    add rx247_pos, 1
  # rx subrule "ws" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."ws"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ws")
    rx247_pos = $P10."pos"()
  # rx subrule "keyword_argument" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."keyword_argument"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("keyword_argument")
    rx247_pos = $P10."pos"()
.annotate 'line', 139
  # rx rxquantr252 ** 0..*
    set_addr $I253, rxquantr252_done
    rx247_cur."!mark_push"(0, rx247_pos, $I253)
  rxquantr252_loop:
  # rx subrule "ws" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."ws"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ws")
    rx247_pos = $P10."pos"()
  # rx subrule "ident" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."ident"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("method_name=ident")
    rx247_pos = $P10."pos"()
  # rx literal  ":"
    add $I11, rx247_pos, 1
    gt $I11, rx247_eos, rx247_fail
    sub $I11, rx247_pos, rx247_off
    substr $S10, rx247_tgt, $I11, 1
    ne $S10, ":", rx247_fail
    add rx247_pos, 1
  # rx subrule "ws" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."ws"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ws")
    rx247_pos = $P10."pos"()
  # rx subrule "keyword_argument" subtype=capture negate=
    rx247_cur."!cursor_pos"(rx247_pos)
    $P10 = rx247_cur."keyword_argument"()
    unless $P10, rx247_fail
    rx247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("keyword_argument")
    rx247_pos = $P10."pos"()
    (rx247_rep) = rx247_cur."!mark_commit"($I253)
    rx247_cur."!mark_push"(rx247_rep, rx247_pos, $I253)
    goto rxquantr252_loop
  rxquantr252_done:
.annotate 'line', 137
  # rx pass
    rx247_cur."!cursor_pass"(rx247_pos, "keyword_message")
    rx247_cur."!cursor_debug"("PASS  ", "keyword_message", " at pos=", rx247_pos)
    .return (rx247_cur)
  rx247_fail:
.annotate 'line', 9
    (rx247_rep, rx247_pos, $I10, $P10) = rx247_cur."!mark_fail"(0)
    lt rx247_pos, -1, rx247_done
    eq rx247_pos, -1, rx247_fail
    jump $I10
  rx247_done:
    rx247_cur."!cursor_fail"()
    rx247_cur."!cursor_debug"("FAIL  ", "keyword_message")
    .return (rx247_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__keyword_message"  :subid("58_1283117834.77257") :method
.annotate 'line', 9
    $P249 = self."!PREFIX__!subrule"("method_name=ident", "")
    new $P250, "ResizablePMCArray"
    push $P250, $P249
    .return ($P250)
.end


.namespace ["mantra";"Grammar"]
.sub "keyword_argument"  :subid("59_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .const 'Sub' $P292 = "66_1283117834.77257" 
    capture_lex $P292
    .const 'Sub' $P286 = "65_1283117834.77257" 
    capture_lex $P286
    .const 'Sub' $P282 = "64_1283117834.77257" 
    capture_lex $P282
    .const 'Sub' $P273 = "63_1283117834.77257" 
    capture_lex $P273
    .const 'Sub' $P269 = "62_1283117834.77257" 
    capture_lex $P269
    .const 'Sub' $P265 = "61_1283117834.77257" 
    capture_lex $P265
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    (rx255_cur, rx255_pos, rx255_tgt) = self."!cursor_start"()
    rx255_cur."!cursor_debug"("START ", "keyword_argument")
    rx255_cur."!cursor_caparray"("unary_method", "binary_message")
    .lex unicode:"$\x{a2}", rx255_cur
    .local pmc match
    .lex "$/", match
    length rx255_eos, rx255_tgt
    set rx255_off, 0
    lt rx255_pos, 2, rx255_start
    sub rx255_off, rx255_pos, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan259_done
    goto rxscan259_scan
  rxscan259_loop:
    ($P10) = rx255_cur."from"()
    inc $P10
    set rx255_pos, $P10
    ge rx255_pos, rx255_eos, rxscan259_done
  rxscan259_scan:
    set_addr $I10, rxscan259_loop
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  rxscan259_done:
.annotate 'line', 143
  # rx subrule "primary" subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."primary"()
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("primary")
    rx255_pos = $P10."pos"()
.annotate 'line', 150
  # rx rxquantr260 ** 0..*
    set_addr $I276, rxquantr260_done
    rx255_cur."!mark_push"(0, rx255_pos, $I276)
  rxquantr260_loop:
.annotate 'line', 144
  # rx rxquantr261 ** 0..*
    set_addr $I262, rxquantr261_done
    rx255_cur."!mark_push"(0, rx255_pos, $I262)
  rxquantr261_loop:
  # rx enumcharlist negate=0 
    ge rx255_pos, rx255_eos, rx255_fail
    sub $I10, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx255_fail
    inc rx255_pos
    (rx255_rep) = rx255_cur."!mark_commit"($I262)
    rx255_cur."!mark_push"(rx255_rep, rx255_pos, $I262)
    goto rxquantr261_loop
  rxquantr261_done:
  # rx subrule "unary_method" subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."unary_method"()
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("unary_method")
    rx255_pos = $P10."pos"()
  alt263_0:
.annotate 'line', 145
    set_addr $I10, alt263_1
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
.annotate 'line', 146
  # rx subrule "before" subtype=zerowidth negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    .const 'Sub' $P265 = "61_1283117834.77257" 
    capture_lex $P265
    $P10 = rx255_cur."before"($P265)
    unless $P10, rx255_fail
    goto alt263_end
  alt263_1:
    set_addr $I10, alt263_2
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
.annotate 'line', 147
  # rx subrule "before" subtype=zerowidth negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    .const 'Sub' $P269 = "62_1283117834.77257" 
    capture_lex $P269
    $P10 = rx255_cur."before"($P269)
    unless $P10, rx255_fail
    goto alt263_end
  alt263_2:
.annotate 'line', 148
  # rx subrule "before" subtype=zerowidth negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    .const 'Sub' $P273 = "63_1283117834.77257" 
    capture_lex $P273
    $P10 = rx255_cur."before"($P273)
    unless $P10, rx255_fail
  alt263_end:
.annotate 'line', 150
    (rx255_rep) = rx255_cur."!mark_commit"($I276)
    rx255_cur."!mark_push"(rx255_rep, rx255_pos, $I276)
    goto rxquantr260_loop
  rxquantr260_done:
.annotate 'line', 157
  # rx rxquantr277 ** 0..*
    set_addr $I295, rxquantr277_done
    rx255_cur."!mark_push"(0, rx255_pos, $I295)
  rxquantr277_loop:
.annotate 'line', 151
  # rx rxquantr278 ** 0..*
    set_addr $I279, rxquantr278_done
    rx255_cur."!mark_push"(0, rx255_pos, $I279)
  rxquantr278_loop:
  # rx enumcharlist negate=0 
    ge rx255_pos, rx255_eos, rx255_fail
    sub $I10, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx255_fail
    inc rx255_pos
    (rx255_rep) = rx255_cur."!mark_commit"($I279)
    rx255_cur."!mark_push"(rx255_rep, rx255_pos, $I279)
    goto rxquantr278_loop
  rxquantr278_done:
  # rx subrule "binary_message" subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."binary_message"()
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binary_message")
    rx255_pos = $P10."pos"()
  alt280_0:
.annotate 'line', 152
    set_addr $I10, alt280_1
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
.annotate 'line', 153
  # rx subrule "before" subtype=zerowidth negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    .const 'Sub' $P282 = "64_1283117834.77257" 
    capture_lex $P282
    $P10 = rx255_cur."before"($P282)
    unless $P10, rx255_fail
    goto alt280_end
  alt280_1:
    set_addr $I10, alt280_2
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
.annotate 'line', 154
  # rx subrule "before" subtype=zerowidth negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    .const 'Sub' $P286 = "65_1283117834.77257" 
    capture_lex $P286
    $P10 = rx255_cur."before"($P286)
    unless $P10, rx255_fail
    goto alt280_end
  alt280_2:
.annotate 'line', 155
  # rx subrule "before" subtype=zerowidth negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    .const 'Sub' $P292 = "66_1283117834.77257" 
    capture_lex $P292
    $P10 = rx255_cur."before"($P292)
    unless $P10, rx255_fail
  alt280_end:
.annotate 'line', 157
    (rx255_rep) = rx255_cur."!mark_commit"($I295)
    rx255_cur."!mark_push"(rx255_rep, rx255_pos, $I295)
    goto rxquantr277_loop
  rxquantr277_done:
.annotate 'line', 142
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "keyword_argument")
    rx255_cur."!cursor_debug"("PASS  ", "keyword_argument", " at pos=", rx255_pos)
    .return (rx255_cur)
  rx255_fail:
.annotate 'line', 9
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    rx255_cur."!cursor_debug"("FAIL  ", "keyword_argument")
    .return (rx255_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__keyword_argument"  :subid("60_1283117834.77257") :method
.annotate 'line', 9
    $P257 = self."!PREFIX__!subrule"("primary", "")
    new $P258, "ResizablePMCArray"
    push $P258, $P257
    .return ($P258)
.end


.namespace ["mantra";"Grammar"]
.sub "_block264"  :anon :subid("61_1283117834.77257") :method :outer("59_1283117834.77257")
.annotate 'line', 146
    .local string rx266_tgt
    .local int rx266_pos
    .local int rx266_off
    .local int rx266_eos
    .local int rx266_rep
    .local pmc rx266_cur
    (rx266_cur, rx266_pos, rx266_tgt) = self."!cursor_start"()
    rx266_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx266_cur
    .local pmc match
    .lex "$/", match
    length rx266_eos, rx266_tgt
    set rx266_off, 0
    lt rx266_pos, 2, rx266_start
    sub rx266_off, rx266_pos, 1
    substr rx266_tgt, rx266_tgt, rx266_off
  rx266_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan267_done
    goto rxscan267_scan
  rxscan267_loop:
    ($P10) = rx266_cur."from"()
    inc $P10
    set rx266_pos, $P10
    ge rx266_pos, rx266_eos, rxscan267_done
  rxscan267_scan:
    set_addr $I10, rxscan267_loop
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxscan267_done:
  # rx charclass_q w r 1..-1
    sub $I10, rx266_pos, rx266_off
    find_not_cclass $I11, 8192, rx266_tgt, $I10, rx266_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx266_fail
    add rx266_pos, rx266_off, $I11
  # rx literal  ":"
    add $I11, rx266_pos, 1
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    substr $S10, rx266_tgt, $I11, 1
    ne $S10, ":", rx266_fail
    add rx266_pos, 1
  # rx pass
    rx266_cur."!cursor_pass"(rx266_pos, "")
    rx266_cur."!cursor_debug"("PASS  ", "", " at pos=", rx266_pos)
    .return (rx266_cur)
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    rx266_cur."!cursor_debug"("FAIL  ", "")
    .return (rx266_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "_block268"  :anon :subid("62_1283117834.77257") :method :outer("59_1283117834.77257")
.annotate 'line', 147
    .local string rx270_tgt
    .local int rx270_pos
    .local int rx270_off
    .local int rx270_eos
    .local int rx270_rep
    .local pmc rx270_cur
    (rx270_cur, rx270_pos, rx270_tgt) = self."!cursor_start"()
    rx270_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx270_cur
    .local pmc match
    .lex "$/", match
    length rx270_eos, rx270_tgt
    set rx270_off, 0
    lt rx270_pos, 2, rx270_start
    sub rx270_off, rx270_pos, 1
    substr rx270_tgt, rx270_tgt, rx270_off
  rx270_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan271_done
    goto rxscan271_scan
  rxscan271_loop:
    ($P10) = rx270_cur."from"()
    inc $P10
    set rx270_pos, $P10
    ge rx270_pos, rx270_eos, rxscan271_done
  rxscan271_scan:
    set_addr $I10, rxscan271_loop
    rx270_cur."!mark_push"(0, rx270_pos, $I10)
  rxscan271_done:
  # rx charclass_q s r 1..-1
    sub $I10, rx270_pos, rx270_off
    find_not_cclass $I11, 32, rx270_tgt, $I10, rx270_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx270_fail
    add rx270_pos, rx270_off, $I11
  # rx pass
    rx270_cur."!cursor_pass"(rx270_pos, "")
    rx270_cur."!cursor_debug"("PASS  ", "", " at pos=", rx270_pos)
    .return (rx270_cur)
  rx270_fail:
    (rx270_rep, rx270_pos, $I10, $P10) = rx270_cur."!mark_fail"(0)
    lt rx270_pos, -1, rx270_done
    eq rx270_pos, -1, rx270_fail
    jump $I10
  rx270_done:
    rx270_cur."!cursor_fail"()
    rx270_cur."!cursor_debug"("FAIL  ", "")
    .return (rx270_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "_block272"  :anon :subid("63_1283117834.77257") :method :outer("59_1283117834.77257")
.annotate 'line', 148
    .local string rx274_tgt
    .local int rx274_pos
    .local int rx274_off
    .local int rx274_eos
    .local int rx274_rep
    .local pmc rx274_cur
    (rx274_cur, rx274_pos, rx274_tgt) = self."!cursor_start"()
    rx274_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx274_cur
    .local pmc match
    .lex "$/", match
    length rx274_eos, rx274_tgt
    set rx274_off, 0
    lt rx274_pos, 2, rx274_start
    sub rx274_off, rx274_pos, 1
    substr rx274_tgt, rx274_tgt, rx274_off
  rx274_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan275_done
    goto rxscan275_scan
  rxscan275_loop:
    ($P10) = rx274_cur."from"()
    inc $P10
    set rx274_pos, $P10
    ge rx274_pos, rx274_eos, rxscan275_done
  rxscan275_scan:
    set_addr $I10, rxscan275_loop
    rx274_cur."!mark_push"(0, rx274_pos, $I10)
  rxscan275_done:
  # rx literal  "."
    add $I11, rx274_pos, 1
    gt $I11, rx274_eos, rx274_fail
    sub $I11, rx274_pos, rx274_off
    substr $S10, rx274_tgt, $I11, 1
    ne $S10, ".", rx274_fail
    add rx274_pos, 1
  # rx pass
    rx274_cur."!cursor_pass"(rx274_pos, "")
    rx274_cur."!cursor_debug"("PASS  ", "", " at pos=", rx274_pos)
    .return (rx274_cur)
  rx274_fail:
    (rx274_rep, rx274_pos, $I10, $P10) = rx274_cur."!mark_fail"(0)
    lt rx274_pos, -1, rx274_done
    eq rx274_pos, -1, rx274_fail
    jump $I10
  rx274_done:
    rx274_cur."!cursor_fail"()
    rx274_cur."!cursor_debug"("FAIL  ", "")
    .return (rx274_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "_block281"  :anon :subid("64_1283117834.77257") :method :outer("59_1283117834.77257")
.annotate 'line', 153
    .local string rx283_tgt
    .local int rx283_pos
    .local int rx283_off
    .local int rx283_eos
    .local int rx283_rep
    .local pmc rx283_cur
    (rx283_cur, rx283_pos, rx283_tgt) = self."!cursor_start"()
    rx283_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx283_cur
    .local pmc match
    .lex "$/", match
    length rx283_eos, rx283_tgt
    set rx283_off, 0
    lt rx283_pos, 2, rx283_start
    sub rx283_off, rx283_pos, 1
    substr rx283_tgt, rx283_tgt, rx283_off
  rx283_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan284_done
    goto rxscan284_scan
  rxscan284_loop:
    ($P10) = rx283_cur."from"()
    inc $P10
    set rx283_pos, $P10
    ge rx283_pos, rx283_eos, rxscan284_done
  rxscan284_scan:
    set_addr $I10, rxscan284_loop
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  rxscan284_done:
  # rx charclass_q w r 1..-1
    sub $I10, rx283_pos, rx283_off
    find_not_cclass $I11, 8192, rx283_tgt, $I10, rx283_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx283_fail
    add rx283_pos, rx283_off, $I11
  # rx literal  ":"
    add $I11, rx283_pos, 1
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 1
    ne $S10, ":", rx283_fail
    add rx283_pos, 1
  # rx pass
    rx283_cur."!cursor_pass"(rx283_pos, "")
    rx283_cur."!cursor_debug"("PASS  ", "", " at pos=", rx283_pos)
    .return (rx283_cur)
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    rx283_cur."!cursor_debug"("FAIL  ", "")
    .return (rx283_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "_block285"  :anon :subid("65_1283117834.77257") :method :outer("59_1283117834.77257")
.annotate 'line', 154
    .local string rx287_tgt
    .local int rx287_pos
    .local int rx287_off
    .local int rx287_eos
    .local int rx287_rep
    .local pmc rx287_cur
    (rx287_cur, rx287_pos, rx287_tgt) = self."!cursor_start"()
    rx287_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx287_cur
    .local pmc match
    .lex "$/", match
    length rx287_eos, rx287_tgt
    set rx287_off, 0
    lt rx287_pos, 2, rx287_start
    sub rx287_off, rx287_pos, 1
    substr rx287_tgt, rx287_tgt, rx287_off
  rx287_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan288_done
    goto rxscan288_scan
  rxscan288_loop:
    ($P10) = rx287_cur."from"()
    inc $P10
    set rx287_pos, $P10
    ge rx287_pos, rx287_eos, rxscan288_done
  rxscan288_scan:
    set_addr $I10, rxscan288_loop
    rx287_cur."!mark_push"(0, rx287_pos, $I10)
  rxscan288_done:
  # rx rxquantr289 ** 0..*
    set_addr $I290, rxquantr289_done
    rx287_cur."!mark_push"(0, rx287_pos, $I290)
  rxquantr289_loop:
  # rx enumcharlist negate=0 
    ge rx287_pos, rx287_eos, rx287_fail
    sub $I10, rx287_pos, rx287_off
    substr $S10, rx287_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx287_fail
    inc rx287_pos
    (rx287_rep) = rx287_cur."!mark_commit"($I290)
    rx287_cur."!mark_push"(rx287_rep, rx287_pos, $I290)
    goto rxquantr289_loop
  rxquantr289_done:
  # rx pass
    rx287_cur."!cursor_pass"(rx287_pos, "")
    rx287_cur."!cursor_debug"("PASS  ", "", " at pos=", rx287_pos)
    .return (rx287_cur)
  rx287_fail:
    (rx287_rep, rx287_pos, $I10, $P10) = rx287_cur."!mark_fail"(0)
    lt rx287_pos, -1, rx287_done
    eq rx287_pos, -1, rx287_fail
    jump $I10
  rx287_done:
    rx287_cur."!cursor_fail"()
    rx287_cur."!cursor_debug"("FAIL  ", "")
    .return (rx287_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "_block291"  :anon :subid("66_1283117834.77257") :method :outer("59_1283117834.77257")
.annotate 'line', 155
    .local string rx293_tgt
    .local int rx293_pos
    .local int rx293_off
    .local int rx293_eos
    .local int rx293_rep
    .local pmc rx293_cur
    (rx293_cur, rx293_pos, rx293_tgt) = self."!cursor_start"()
    rx293_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx293_cur
    .local pmc match
    .lex "$/", match
    length rx293_eos, rx293_tgt
    set rx293_off, 0
    lt rx293_pos, 2, rx293_start
    sub rx293_off, rx293_pos, 1
    substr rx293_tgt, rx293_tgt, rx293_off
  rx293_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan294_done
    goto rxscan294_scan
  rxscan294_loop:
    ($P10) = rx293_cur."from"()
    inc $P10
    set rx293_pos, $P10
    ge rx293_pos, rx293_eos, rxscan294_done
  rxscan294_scan:
    set_addr $I10, rxscan294_loop
    rx293_cur."!mark_push"(0, rx293_pos, $I10)
  rxscan294_done:
  # rx literal  "."
    add $I11, rx293_pos, 1
    gt $I11, rx293_eos, rx293_fail
    sub $I11, rx293_pos, rx293_off
    substr $S10, rx293_tgt, $I11, 1
    ne $S10, ".", rx293_fail
    add rx293_pos, 1
  # rx pass
    rx293_cur."!cursor_pass"(rx293_pos, "")
    rx293_cur."!cursor_debug"("PASS  ", "", " at pos=", rx293_pos)
    .return (rx293_cur)
  rx293_fail:
    (rx293_rep, rx293_pos, $I10, $P10) = rx293_cur."!mark_fail"(0)
    lt rx293_pos, -1, rx293_done
    eq rx293_pos, -1, rx293_fail
    jump $I10
  rx293_done:
    rx293_cur."!cursor_fail"()
    rx293_cur."!cursor_debug"("FAIL  ", "")
    .return (rx293_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "primary"  :subid("67_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx297_tgt
    .local int rx297_pos
    .local int rx297_off
    .local int rx297_eos
    .local int rx297_rep
    .local pmc rx297_cur
    (rx297_cur, rx297_pos, rx297_tgt) = self."!cursor_start"()
    rx297_cur."!cursor_debug"("START ", "primary")
    .lex unicode:"$\x{a2}", rx297_cur
    .local pmc match
    .lex "$/", match
    length rx297_eos, rx297_tgt
    set rx297_off, 0
    lt rx297_pos, 2, rx297_start
    sub rx297_off, rx297_pos, 1
    substr rx297_tgt, rx297_tgt, rx297_off
  rx297_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan300_done
    goto rxscan300_scan
  rxscan300_loop:
    ($P10) = rx297_cur."from"()
    inc $P10
    set rx297_pos, $P10
    ge rx297_pos, rx297_eos, rxscan300_done
  rxscan300_scan:
    set_addr $I10, rxscan300_loop
    rx297_cur."!mark_push"(0, rx297_pos, $I10)
  rxscan300_done:
  alt301_0:
.annotate 'line', 166
    set_addr $I10, alt301_1
    rx297_cur."!mark_push"(0, rx297_pos, $I10)
.annotate 'line', 167
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx subrule "variable" subtype=capture negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."variable"()
    unless $P10, rx297_fail
    rx297_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("variable")
    rx297_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
    goto alt301_end
  alt301_1:
    set_addr $I10, alt301_2
    rx297_cur."!mark_push"(0, rx297_pos, $I10)
.annotate 'line', 168
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx subrule "literal" subtype=capture negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."literal"()
    unless $P10, rx297_fail
    rx297_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("literal")
    rx297_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
    goto alt301_end
  alt301_2:
.annotate 'line', 169
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx297_pos, 1
    gt $I11, rx297_eos, rx297_fail
    sub $I11, rx297_pos, rx297_off
    substr $S10, rx297_tgt, $I11, 1
    ne $S10, "(", rx297_fail
    add rx297_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  # rx subrule "basic_expression" subtype=capture negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."basic_expression"()
    unless $P10, rx297_fail
    rx297_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("basic_expression")
    rx297_pos = $P10."pos"()
  alt308_0:
    set_addr $I10, alt308_1
    rx297_cur."!mark_push"(0, rx297_pos, $I10)
  # rx literal  ")"
    add $I11, rx297_pos, 1
    gt $I11, rx297_eos, rx297_fail
    sub $I11, rx297_pos, rx297_off
    substr $S10, rx297_tgt, $I11, 1
    ne $S10, ")", rx297_fail
    add rx297_pos, 1
    goto alt308_end
  alt308_1:
  # rx subrule "FAILGOAL" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."FAILGOAL"("')'")
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  alt308_end:
  # rx subrule "ws" subtype=method negate=
    rx297_cur."!cursor_pos"(rx297_pos)
    $P10 = rx297_cur."ws"()
    unless $P10, rx297_fail
    rx297_pos = $P10."pos"()
  alt301_end:
.annotate 'line', 166
  # rx pass
    rx297_cur."!cursor_pass"(rx297_pos, "primary")
    rx297_cur."!cursor_debug"("PASS  ", "primary", " at pos=", rx297_pos)
    .return (rx297_cur)
  rx297_fail:
.annotate 'line', 9
    (rx297_rep, rx297_pos, $I10, $P10) = rx297_cur."!mark_fail"(0)
    lt rx297_pos, -1, rx297_done
    eq rx297_pos, -1, rx297_fail
    jump $I10
  rx297_done:
    rx297_cur."!cursor_fail"()
    rx297_cur."!cursor_debug"("FAIL  ", "primary")
    .return (rx297_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__primary"  :subid("68_1283117834.77257") :method
.annotate 'line', 9
    new $P299, "ResizablePMCArray"
    push $P299, ""
    push $P299, ""
    push $P299, ""
    .return ($P299)
.end


.namespace ["mantra";"Grammar"]
.sub "variable"  :subid("69_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx312_tgt
    .local int rx312_pos
    .local int rx312_off
    .local int rx312_eos
    .local int rx312_rep
    .local pmc rx312_cur
    (rx312_cur, rx312_pos, rx312_tgt) = self."!cursor_start"()
    rx312_cur."!cursor_debug"("START ", "variable")
    .lex unicode:"$\x{a2}", rx312_cur
    .local pmc match
    .lex "$/", match
    length rx312_eos, rx312_tgt
    set rx312_off, 0
    lt rx312_pos, 2, rx312_start
    sub rx312_off, rx312_pos, 1
    substr rx312_tgt, rx312_tgt, rx312_off
  rx312_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan317_done
    goto rxscan317_scan
  rxscan317_loop:
    ($P10) = rx312_cur."from"()
    inc $P10
    set rx312_pos, $P10
    ge rx312_pos, rx312_eos, rxscan317_done
  rxscan317_scan:
    set_addr $I10, rxscan317_loop
    rx312_cur."!mark_push"(0, rx312_pos, $I10)
  rxscan317_done:
  alt318_0:
.annotate 'line', 172
    set_addr $I10, alt318_1
    rx312_cur."!mark_push"(0, rx312_pos, $I10)
.annotate 'line', 173
  # rx subrule "pseudo_variable_self" subtype=capture negate=
    rx312_cur."!cursor_pos"(rx312_pos)
    $P10 = rx312_cur."pseudo_variable_self"()
    unless $P10, rx312_fail
    rx312_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pseudo_variable_self")
    rx312_pos = $P10."pos"()
    goto alt318_end
  alt318_1:
.annotate 'line', 174
  # rx subrule "writable_variable" subtype=capture negate=
    rx312_cur."!cursor_pos"(rx312_pos)
    $P10 = rx312_cur."writable_variable"()
    unless $P10, rx312_fail
    rx312_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("writable_variable")
    rx312_pos = $P10."pos"()
  alt318_end:
.annotate 'line', 172
  # rx pass
    rx312_cur."!cursor_pass"(rx312_pos, "variable")
    rx312_cur."!cursor_debug"("PASS  ", "variable", " at pos=", rx312_pos)
    .return (rx312_cur)
  rx312_fail:
.annotate 'line', 9
    (rx312_rep, rx312_pos, $I10, $P10) = rx312_cur."!mark_fail"(0)
    lt rx312_pos, -1, rx312_done
    eq rx312_pos, -1, rx312_fail
    jump $I10
  rx312_done:
    rx312_cur."!cursor_fail"()
    rx312_cur."!cursor_debug"("FAIL  ", "variable")
    .return (rx312_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__variable"  :subid("70_1283117834.77257") :method
.annotate 'line', 9
    $P314 = self."!PREFIX__!subrule"("writable_variable", "")
    $P315 = self."!PREFIX__!subrule"("pseudo_variable_self", "")
    new $P316, "ResizablePMCArray"
    push $P316, $P314
    push $P316, $P315
    .return ($P316)
.end


.namespace ["mantra";"Grammar"]
.sub "writable_variable"  :subid("71_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx320_tgt
    .local int rx320_pos
    .local int rx320_off
    .local int rx320_eos
    .local int rx320_rep
    .local pmc rx320_cur
    (rx320_cur, rx320_pos, rx320_tgt) = self."!cursor_start"()
    rx320_cur."!cursor_debug"("START ", "writable_variable")
    .lex unicode:"$\x{a2}", rx320_cur
    .local pmc match
    .lex "$/", match
    length rx320_eos, rx320_tgt
    set rx320_off, 0
    lt rx320_pos, 2, rx320_start
    sub rx320_off, rx320_pos, 1
    substr rx320_tgt, rx320_tgt, rx320_off
  rx320_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan325_done
    goto rxscan325_scan
  rxscan325_loop:
    ($P10) = rx320_cur."from"()
    inc $P10
    set rx320_pos, $P10
    ge rx320_pos, rx320_eos, rxscan325_done
  rxscan325_scan:
    set_addr $I10, rxscan325_loop
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
  rxscan325_done:
  alt326_0:
.annotate 'line', 177
    set_addr $I10, alt326_1
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
.annotate 'line', 178
  # rx subrule "instance_variable" subtype=capture negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    $P10 = rx320_cur."instance_variable"()
    unless $P10, rx320_fail
    rx320_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("instance_variable")
    rx320_pos = $P10."pos"()
    goto alt326_end
  alt326_1:
.annotate 'line', 179
  # rx subrule "local_variable" subtype=capture negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    $P10 = rx320_cur."local_variable"()
    unless $P10, rx320_fail
    rx320_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("local_variable")
    rx320_pos = $P10."pos"()
  alt326_end:
.annotate 'line', 177
  # rx pass
    rx320_cur."!cursor_pass"(rx320_pos, "writable_variable")
    rx320_cur."!cursor_debug"("PASS  ", "writable_variable", " at pos=", rx320_pos)
    .return (rx320_cur)
  rx320_fail:
.annotate 'line', 9
    (rx320_rep, rx320_pos, $I10, $P10) = rx320_cur."!mark_fail"(0)
    lt rx320_pos, -1, rx320_done
    eq rx320_pos, -1, rx320_fail
    jump $I10
  rx320_done:
    rx320_cur."!cursor_fail"()
    rx320_cur."!cursor_debug"("FAIL  ", "writable_variable")
    .return (rx320_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__writable_variable"  :subid("72_1283117834.77257") :method
.annotate 'line', 9
    $P322 = self."!PREFIX__!subrule"("local_variable", "")
    $P323 = self."!PREFIX__!subrule"("instance_variable", "")
    new $P324, "ResizablePMCArray"
    push $P324, $P322
    push $P324, $P323
    .return ($P324)
.end


.namespace ["mantra";"Grammar"]
.sub "assignment"  :subid("73_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx328_tgt
    .local int rx328_pos
    .local int rx328_off
    .local int rx328_eos
    .local int rx328_rep
    .local pmc rx328_cur
    (rx328_cur, rx328_pos, rx328_tgt) = self."!cursor_start"()
    rx328_cur."!cursor_debug"("START ", "assignment")
    .lex unicode:"$\x{a2}", rx328_cur
    .local pmc match
    .lex "$/", match
    length rx328_eos, rx328_tgt
    set rx328_off, 0
    lt rx328_pos, 2, rx328_start
    sub rx328_off, rx328_pos, 1
    substr rx328_tgt, rx328_tgt, rx328_off
  rx328_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan332_done
    goto rxscan332_scan
  rxscan332_loop:
    ($P10) = rx328_cur."from"()
    inc $P10
    set rx328_pos, $P10
    ge rx328_pos, rx328_eos, rxscan332_done
  rxscan332_scan:
    set_addr $I10, rxscan332_loop
    rx328_cur."!mark_push"(0, rx328_pos, $I10)
  rxscan332_done:
.annotate 'line', 183
  # rx subrule "writable_variable" subtype=capture negate=
    rx328_cur."!cursor_pos"(rx328_pos)
    $P10 = rx328_cur."writable_variable"()
    unless $P10, rx328_fail
    rx328_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("writable_variable")
    rx328_pos = $P10."pos"()
  # rx literal  ":"
    add $I11, rx328_pos, 1
    gt $I11, rx328_eos, rx328_fail
    sub $I11, rx328_pos, rx328_off
    substr $S10, rx328_tgt, $I11, 1
    ne $S10, ":", rx328_fail
    add rx328_pos, 1
  # rx rxquantr333 ** 0..*
    set_addr $I334, rxquantr333_done
    rx328_cur."!mark_push"(0, rx328_pos, $I334)
  rxquantr333_loop:
  # rx enumcharlist negate=0 
    ge rx328_pos, rx328_eos, rx328_fail
    sub $I10, rx328_pos, rx328_off
    substr $S10, rx328_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx328_fail
    inc rx328_pos
    (rx328_rep) = rx328_cur."!mark_commit"($I334)
    rx328_cur."!mark_push"(rx328_rep, rx328_pos, $I334)
    goto rxquantr333_loop
  rxquantr333_done:
  # rx subrule "basic_expression" subtype=capture negate=
    rx328_cur."!cursor_pos"(rx328_pos)
    $P10 = rx328_cur."basic_expression"()
    unless $P10, rx328_fail
    rx328_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("basic_expression")
    rx328_pos = $P10."pos"()
.annotate 'line', 182
  # rx pass
    rx328_cur."!cursor_pass"(rx328_pos, "assignment")
    rx328_cur."!cursor_debug"("PASS  ", "assignment", " at pos=", rx328_pos)
    .return (rx328_cur)
  rx328_fail:
.annotate 'line', 9
    (rx328_rep, rx328_pos, $I10, $P10) = rx328_cur."!mark_fail"(0)
    lt rx328_pos, -1, rx328_done
    eq rx328_pos, -1, rx328_fail
    jump $I10
  rx328_done:
    rx328_cur."!cursor_fail"()
    rx328_cur."!cursor_debug"("FAIL  ", "assignment")
    .return (rx328_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__assignment"  :subid("74_1283117834.77257") :method
.annotate 'line', 9
    $P330 = self."!PREFIX__!subrule"("writable_variable", "")
    new $P331, "ResizablePMCArray"
    push $P331, $P330
    .return ($P331)
.end


.namespace ["mantra";"Grammar"]
.sub "pseudo_variable_self"  :subid("75_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx336_tgt
    .local int rx336_pos
    .local int rx336_off
    .local int rx336_eos
    .local int rx336_rep
    .local pmc rx336_cur
    (rx336_cur, rx336_pos, rx336_tgt) = self."!cursor_start"()
    rx336_cur."!cursor_debug"("START ", "pseudo_variable_self")
    .lex unicode:"$\x{a2}", rx336_cur
    .local pmc match
    .lex "$/", match
    length rx336_eos, rx336_tgt
    set rx336_off, 0
    lt rx336_pos, 2, rx336_start
    sub rx336_off, rx336_pos, 1
    substr rx336_tgt, rx336_tgt, rx336_off
  rx336_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan339_done
    goto rxscan339_scan
  rxscan339_loop:
    ($P10) = rx336_cur."from"()
    inc $P10
    set rx336_pos, $P10
    ge rx336_pos, rx336_eos, rxscan339_done
  rxscan339_scan:
    set_addr $I10, rxscan339_loop
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  rxscan339_done:
.annotate 'line', 193
  # rx literal  "self"
    add $I11, rx336_pos, 4
    gt $I11, rx336_eos, rx336_fail
    sub $I11, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I11, 4
    ne $S10, "self", rx336_fail
    add rx336_pos, 4
.annotate 'line', 192
  # rx pass
    rx336_cur."!cursor_pass"(rx336_pos, "pseudo_variable_self")
    rx336_cur."!cursor_debug"("PASS  ", "pseudo_variable_self", " at pos=", rx336_pos)
    .return (rx336_cur)
  rx336_fail:
.annotate 'line', 9
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    rx336_cur."!cursor_debug"("FAIL  ", "pseudo_variable_self")
    .return (rx336_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__pseudo_variable_self"  :subid("76_1283117834.77257") :method
.annotate 'line', 9
    new $P338, "ResizablePMCArray"
    push $P338, "self"
    .return ($P338)
.end


.namespace ["mantra";"Grammar"]
.sub "instance_variable"  :subid("77_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx341_tgt
    .local int rx341_pos
    .local int rx341_off
    .local int rx341_eos
    .local int rx341_rep
    .local pmc rx341_cur
    (rx341_cur, rx341_pos, rx341_tgt) = self."!cursor_start"()
    rx341_cur."!cursor_debug"("START ", "instance_variable")
    .lex unicode:"$\x{a2}", rx341_cur
    .local pmc match
    .lex "$/", match
    length rx341_eos, rx341_tgt
    set rx341_off, 0
    lt rx341_pos, 2, rx341_start
    sub rx341_off, rx341_pos, 1
    substr rx341_tgt, rx341_tgt, rx341_off
  rx341_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan345_done
    goto rxscan345_scan
  rxscan345_loop:
    ($P10) = rx341_cur."from"()
    inc $P10
    set rx341_pos, $P10
    ge rx341_pos, rx341_eos, rxscan345_done
  rxscan345_scan:
    set_addr $I10, rxscan345_loop
    rx341_cur."!mark_push"(0, rx341_pos, $I10)
  rxscan345_done:
.annotate 'line', 197
  # rx literal  "@"
    add $I11, rx341_pos, 1
    gt $I11, rx341_eos, rx341_fail
    sub $I11, rx341_pos, rx341_off
    substr $S10, rx341_tgt, $I11, 1
    ne $S10, "@", rx341_fail
    add rx341_pos, 1
  # rx subrule "ident" subtype=capture negate=
    rx341_cur."!cursor_pos"(rx341_pos)
    $P10 = rx341_cur."ident"()
    unless $P10, rx341_fail
    rx341_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ident")
    rx341_pos = $P10."pos"()
.annotate 'line', 196
  # rx pass
    rx341_cur."!cursor_pass"(rx341_pos, "instance_variable")
    rx341_cur."!cursor_debug"("PASS  ", "instance_variable", " at pos=", rx341_pos)
    .return (rx341_cur)
  rx341_fail:
.annotate 'line', 9
    (rx341_rep, rx341_pos, $I10, $P10) = rx341_cur."!mark_fail"(0)
    lt rx341_pos, -1, rx341_done
    eq rx341_pos, -1, rx341_fail
    jump $I10
  rx341_done:
    rx341_cur."!cursor_fail"()
    rx341_cur."!cursor_debug"("FAIL  ", "instance_variable")
    .return (rx341_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__instance_variable"  :subid("78_1283117834.77257") :method
.annotate 'line', 9
    $P343 = self."!PREFIX__!subrule"("ident", "@")
    new $P344, "ResizablePMCArray"
    push $P344, $P343
    .return ($P344)
.end


.namespace ["mantra";"Grammar"]
.sub "local_variable"  :subid("79_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx347_tgt
    .local int rx347_pos
    .local int rx347_off
    .local int rx347_eos
    .local int rx347_rep
    .local pmc rx347_cur
    (rx347_cur, rx347_pos, rx347_tgt) = self."!cursor_start"()
    rx347_cur."!cursor_debug"("START ", "local_variable")
    .lex unicode:"$\x{a2}", rx347_cur
    .local pmc match
    .lex "$/", match
    length rx347_eos, rx347_tgt
    set rx347_off, 0
    lt rx347_pos, 2, rx347_start
    sub rx347_off, rx347_pos, 1
    substr rx347_tgt, rx347_tgt, rx347_off
  rx347_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan351_done
    goto rxscan351_scan
  rxscan351_loop:
    ($P10) = rx347_cur."from"()
    inc $P10
    set rx347_pos, $P10
    ge rx347_pos, rx347_eos, rxscan351_done
  rxscan351_scan:
    set_addr $I10, rxscan351_loop
    rx347_cur."!mark_push"(0, rx347_pos, $I10)
  rxscan351_done:
.annotate 'line', 206
  # rx subrule "ident" subtype=capture negate=
    rx347_cur."!cursor_pos"(rx347_pos)
    $P10 = rx347_cur."ident"()
    unless $P10, rx347_fail
    rx347_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name=ident")
    rx347_pos = $P10."pos"()
.annotate 'line', 205
  # rx pass
    rx347_cur."!cursor_pass"(rx347_pos, "local_variable")
    rx347_cur."!cursor_debug"("PASS  ", "local_variable", " at pos=", rx347_pos)
    .return (rx347_cur)
  rx347_fail:
.annotate 'line', 9
    (rx347_rep, rx347_pos, $I10, $P10) = rx347_cur."!mark_fail"(0)
    lt rx347_pos, -1, rx347_done
    eq rx347_pos, -1, rx347_fail
    jump $I10
  rx347_done:
    rx347_cur."!cursor_fail"()
    rx347_cur."!cursor_debug"("FAIL  ", "local_variable")
    .return (rx347_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__local_variable"  :subid("80_1283117834.77257") :method
.annotate 'line', 9
    $P349 = self."!PREFIX__!subrule"("name=ident", "")
    new $P350, "ResizablePMCArray"
    push $P350, $P349
    .return ($P350)
.end


.namespace ["mantra";"Grammar"]
.sub "binary_method_name"  :subid("81_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx353_tgt
    .local int rx353_pos
    .local int rx353_off
    .local int rx353_eos
    .local int rx353_rep
    .local pmc rx353_cur
    (rx353_cur, rx353_pos, rx353_tgt) = self."!cursor_start"()
    rx353_cur."!cursor_debug"("START ", "binary_method_name")
    .lex unicode:"$\x{a2}", rx353_cur
    .local pmc match
    .lex "$/", match
    length rx353_eos, rx353_tgt
    set rx353_off, 0
    lt rx353_pos, 2, rx353_start
    sub rx353_off, rx353_pos, 1
    substr rx353_tgt, rx353_tgt, rx353_off
  rx353_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan356_done
    goto rxscan356_scan
  rxscan356_loop:
    ($P10) = rx353_cur."from"()
    inc $P10
    set rx353_pos, $P10
    ge rx353_pos, rx353_eos, rxscan356_done
  rxscan356_scan:
    set_addr $I10, rxscan356_loop
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  rxscan356_done:
.annotate 'line', 218
  # rx rxquantr357 ** 1..*
    set_addr $I359, rxquantr357_done
    rx353_cur."!mark_push"(0, -1, $I359)
  rxquantr357_loop:
  alt358_0:
.annotate 'line', 217
    set_addr $I10, alt358_1
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "!"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "!", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_1:
    set_addr $I10, alt358_2
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "%"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "%", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_2:
    set_addr $I10, alt358_3
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "+"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "+", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_3:
    set_addr $I10, alt358_4
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "-"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "-", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_4:
    set_addr $I10, alt358_5
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "/"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "/", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_5:
    set_addr $I10, alt358_6
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "<"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "<", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_6:
    set_addr $I10, alt358_7
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "="
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "=", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_7:
    set_addr $I10, alt358_8
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  ">"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, ">", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_8:
    set_addr $I10, alt358_9
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
.annotate 'line', 218
  # rx literal  "?"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "?", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_9:
    set_addr $I10, alt358_10
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "$"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "$", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_10:
    set_addr $I10, alt358_11
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "\\"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "\\", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_11:
    set_addr $I10, alt358_12
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "~"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "~", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_12:
    set_addr $I10, alt358_13
    rx353_cur."!mark_push"(0, rx353_pos, $I10)
  # rx literal  "|"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "|", rx353_fail
    add rx353_pos, 1
    goto alt358_end
  alt358_13:
  # rx literal  "*"
    add $I11, rx353_pos, 1
    gt $I11, rx353_eos, rx353_fail
    sub $I11, rx353_pos, rx353_off
    substr $S10, rx353_tgt, $I11, 1
    ne $S10, "*", rx353_fail
    add rx353_pos, 1
  alt358_end:
    (rx353_rep) = rx353_cur."!mark_commit"($I359)
    rx353_cur."!mark_push"(rx353_rep, rx353_pos, $I359)
    goto rxquantr357_loop
  rxquantr357_done:
.annotate 'line', 216
  # rx pass
    rx353_cur."!cursor_pass"(rx353_pos, "binary_method_name")
    rx353_cur."!cursor_debug"("PASS  ", "binary_method_name", " at pos=", rx353_pos)
    .return (rx353_cur)
  rx353_fail:
.annotate 'line', 9
    (rx353_rep, rx353_pos, $I10, $P10) = rx353_cur."!mark_fail"(0)
    lt rx353_pos, -1, rx353_done
    eq rx353_pos, -1, rx353_fail
    jump $I10
  rx353_done:
    rx353_cur."!cursor_fail"()
    rx353_cur."!cursor_debug"("FAIL  ", "binary_method_name")
    .return (rx353_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__binary_method_name"  :subid("82_1283117834.77257") :method
.annotate 'line', 9
    new $P355, "ResizablePMCArray"
    push $P355, ""
    .return ($P355)
.end


.namespace ["mantra";"Grammar"]
.sub "literal"  :subid("83_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx361_tgt
    .local int rx361_pos
    .local int rx361_off
    .local int rx361_eos
    .local int rx361_rep
    .local pmc rx361_cur
    (rx361_cur, rx361_pos, rx361_tgt) = self."!cursor_start"()
    rx361_cur."!cursor_debug"("START ", "literal")
    .lex unicode:"$\x{a2}", rx361_cur
    .local pmc match
    .lex "$/", match
    length rx361_eos, rx361_tgt
    set rx361_off, 0
    lt rx361_pos, 2, rx361_start
    sub rx361_off, rx361_pos, 1
    substr rx361_tgt, rx361_tgt, rx361_off
  rx361_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan365_done
    goto rxscan365_scan
  rxscan365_loop:
    ($P10) = rx361_cur."from"()
    inc $P10
    set rx361_pos, $P10
    ge rx361_pos, rx361_eos, rxscan365_done
  rxscan365_scan:
    set_addr $I10, rxscan365_loop
    rx361_cur."!mark_push"(0, rx361_pos, $I10)
  rxscan365_done:
.annotate 'line', 226
  # rx subrule "string_constant" subtype=capture negate=
    rx361_cur."!cursor_pos"(rx361_pos)
    $P10 = rx361_cur."string_constant"()
    unless $P10, rx361_fail
    rx361_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("string_constant")
    rx361_pos = $P10."pos"()
.annotate 'line', 225
  # rx pass
    rx361_cur."!cursor_pass"(rx361_pos, "literal")
    rx361_cur."!cursor_debug"("PASS  ", "literal", " at pos=", rx361_pos)
    .return (rx361_cur)
  rx361_fail:
.annotate 'line', 9
    (rx361_rep, rx361_pos, $I10, $P10) = rx361_cur."!mark_fail"(0)
    lt rx361_pos, -1, rx361_done
    eq rx361_pos, -1, rx361_fail
    jump $I10
  rx361_done:
    rx361_cur."!cursor_fail"()
    rx361_cur."!cursor_debug"("FAIL  ", "literal")
    .return (rx361_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__literal"  :subid("84_1283117834.77257") :method
.annotate 'line', 9
    $P363 = self."!PREFIX__!subrule"("string_constant", "")
    new $P364, "ResizablePMCArray"
    push $P364, $P363
    .return ($P364)
.end


.namespace ["mantra";"Grammar"]
.sub "string_constant"  :subid("85_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx367_tgt
    .local int rx367_pos
    .local int rx367_off
    .local int rx367_eos
    .local int rx367_rep
    .local pmc rx367_cur
    (rx367_cur, rx367_pos, rx367_tgt) = self."!cursor_start"()
    rx367_cur."!cursor_debug"("START ", "string_constant")
    .lex unicode:"$\x{a2}", rx367_cur
    .local pmc match
    .lex "$/", match
    length rx367_eos, rx367_tgt
    set rx367_off, 0
    lt rx367_pos, 2, rx367_start
    sub rx367_off, rx367_pos, 1
    substr rx367_tgt, rx367_tgt, rx367_off
  rx367_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan371_done
    goto rxscan371_scan
  rxscan371_loop:
    ($P10) = rx367_cur."from"()
    inc $P10
    set rx367_pos, $P10
    ge rx367_pos, rx367_eos, rxscan371_done
  rxscan371_scan:
    set_addr $I10, rxscan371_loop
    rx367_cur."!mark_push"(0, rx367_pos, $I10)
  rxscan371_done:
.annotate 'line', 230
  # rx subrule "quote" subtype=capture negate=
    rx367_cur."!cursor_pos"(rx367_pos)
    $P10 = rx367_cur."quote"()
    unless $P10, rx367_fail
    rx367_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx367_pos = $P10."pos"()
  # rx pass
    rx367_cur."!cursor_pass"(rx367_pos, "string_constant")
    rx367_cur."!cursor_debug"("PASS  ", "string_constant", " at pos=", rx367_pos)
    .return (rx367_cur)
  rx367_fail:
.annotate 'line', 9
    (rx367_rep, rx367_pos, $I10, $P10) = rx367_cur."!mark_fail"(0)
    lt rx367_pos, -1, rx367_done
    eq rx367_pos, -1, rx367_fail
    jump $I10
  rx367_done:
    rx367_cur."!cursor_fail"()
    rx367_cur."!cursor_debug"("FAIL  ", "string_constant")
    .return (rx367_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__string_constant"  :subid("86_1283117834.77257") :method
.annotate 'line', 9
    $P369 = self."!PREFIX__!subrule"("quote", "")
    new $P370, "ResizablePMCArray"
    push $P370, $P369
    .return ($P370)
.end


.namespace ["mantra";"Grammar"]
.sub "quote"  :subid("87_1283117834.77257") :method
.annotate 'line', 232
    $P373 = self."!protoregex"("quote")
    .return ($P373)
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__quote"  :subid("88_1283117834.77257") :method
.annotate 'line', 232
    $P375 = self."!PREFIX__!protoregex"("quote")
    .return ($P375)
.end


.namespace ["mantra";"Grammar"]
.sub "quote:sym<'>"  :subid("89_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx377_tgt
    .local int rx377_pos
    .local int rx377_off
    .local int rx377_eos
    .local int rx377_rep
    .local pmc rx377_cur
    (rx377_cur, rx377_pos, rx377_tgt) = self."!cursor_start"()
    rx377_cur."!cursor_debug"("START ", "quote:sym<'>")
    .lex unicode:"$\x{a2}", rx377_cur
    .local pmc match
    .lex "$/", match
    length rx377_eos, rx377_tgt
    set rx377_off, 0
    lt rx377_pos, 2, rx377_start
    sub rx377_off, rx377_pos, 1
    substr rx377_tgt, rx377_tgt, rx377_off
  rx377_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan380_done
    goto rxscan380_scan
  rxscan380_loop:
    ($P10) = rx377_cur."from"()
    inc $P10
    set rx377_pos, $P10
    ge rx377_pos, rx377_eos, rxscan380_done
  rxscan380_scan:
    set_addr $I10, rxscan380_loop
    rx377_cur."!mark_push"(0, rx377_pos, $I10)
  rxscan380_done:
.annotate 'line', 233
  # rx enumcharlist negate=0 zerowidth
    ge rx377_pos, rx377_eos, rx377_fail
    sub $I10, rx377_pos, rx377_off
    substr $S10, rx377_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx377_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx377_cur."!cursor_pos"(rx377_pos)
    $P10 = rx377_cur."quote_EXPR"(":q")
    unless $P10, rx377_fail
    rx377_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx377_pos = $P10."pos"()
  # rx pass
    rx377_cur."!cursor_pass"(rx377_pos, "quote:sym<'>")
    rx377_cur."!cursor_debug"("PASS  ", "quote:sym<'>", " at pos=", rx377_pos)
    .return (rx377_cur)
  rx377_fail:
.annotate 'line', 9
    (rx377_rep, rx377_pos, $I10, $P10) = rx377_cur."!mark_fail"(0)
    lt rx377_pos, -1, rx377_done
    eq rx377_pos, -1, rx377_fail
    jump $I10
  rx377_done:
    rx377_cur."!cursor_fail"()
    rx377_cur."!cursor_debug"("FAIL  ", "quote:sym<'>")
    .return (rx377_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__quote:sym<'>"  :subid("90_1283117834.77257") :method
.annotate 'line', 9
    new $P379, "ResizablePMCArray"
    push $P379, "'"
    .return ($P379)
.end


.namespace ["mantra";"Grammar"]
.sub "string_literal"  :subid("91_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx382_tgt
    .local int rx382_pos
    .local int rx382_off
    .local int rx382_eos
    .local int rx382_rep
    .local pmc rx382_cur
    (rx382_cur, rx382_pos, rx382_tgt) = self."!cursor_start"()
    rx382_cur."!cursor_debug"("START ", "string_literal")
    .lex unicode:"$\x{a2}", rx382_cur
    .local pmc match
    .lex "$/", match
    length rx382_eos, rx382_tgt
    set rx382_off, 0
    lt rx382_pos, 2, rx382_start
    sub rx382_off, rx382_pos, 1
    substr rx382_tgt, rx382_tgt, rx382_off
  rx382_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan385_done
    goto rxscan385_scan
  rxscan385_loop:
    ($P10) = rx382_cur."from"()
    inc $P10
    set rx382_pos, $P10
    ge rx382_pos, rx382_eos, rxscan385_done
  rxscan385_scan:
    set_addr $I10, rxscan385_loop
    rx382_cur."!mark_push"(0, rx382_pos, $I10)
  rxscan385_done:
.annotate 'line', 237
  # rx rxquantr386 ** 1..*
    set_addr $I388, rxquantr386_done
    rx382_cur."!mark_push"(0, -1, $I388)
  rxquantr386_loop:
  alt387_0:
    set_addr $I10, alt387_1
    rx382_cur."!mark_push"(0, rx382_pos, $I10)
  # rx charclass w
    ge rx382_pos, rx382_eos, rx382_fail
    sub $I10, rx382_pos, rx382_off
    is_cclass $I11, 8192, rx382_tgt, $I10
    unless $I11, rx382_fail
    inc rx382_pos
    goto alt387_end
  alt387_1:
    set_addr $I10, alt387_2
    rx382_cur."!mark_push"(0, rx382_pos, $I10)
  # rx charclass d
    ge rx382_pos, rx382_eos, rx382_fail
    sub $I10, rx382_pos, rx382_off
    is_cclass $I11, 8, rx382_tgt, $I10
    unless $I11, rx382_fail
    inc rx382_pos
    goto alt387_end
  alt387_2:
  # rx literal  ";"
    add $I11, rx382_pos, 1
    gt $I11, rx382_eos, rx382_fail
    sub $I11, rx382_pos, rx382_off
    substr $S10, rx382_tgt, $I11, 1
    ne $S10, ";", rx382_fail
    add rx382_pos, 1
  alt387_end:
    (rx382_rep) = rx382_cur."!mark_commit"($I388)
    rx382_cur."!mark_push"(rx382_rep, rx382_pos, $I388)
    goto rxquantr386_loop
  rxquantr386_done:
.annotate 'line', 236
  # rx pass
    rx382_cur."!cursor_pass"(rx382_pos, "string_literal")
    rx382_cur."!cursor_debug"("PASS  ", "string_literal", " at pos=", rx382_pos)
    .return (rx382_cur)
  rx382_fail:
.annotate 'line', 9
    (rx382_rep, rx382_pos, $I10, $P10) = rx382_cur."!mark_fail"(0)
    lt rx382_pos, -1, rx382_done
    eq rx382_pos, -1, rx382_fail
    jump $I10
  rx382_done:
    rx382_cur."!cursor_fail"()
    rx382_cur."!cursor_debug"("FAIL  ", "string_literal")
    .return (rx382_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__string_literal"  :subid("92_1283117834.77257") :method
.annotate 'line', 9
    new $P384, "ResizablePMCArray"
    push $P384, ""
    .return ($P384)
.end


.namespace ["mantra";"Grammar"]
.sub "primitive"  :subid("93_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx390_tgt
    .local int rx390_pos
    .local int rx390_off
    .local int rx390_eos
    .local int rx390_rep
    .local pmc rx390_cur
    (rx390_cur, rx390_pos, rx390_tgt) = self."!cursor_start"()
    rx390_cur."!cursor_debug"("START ", "primitive")
    rx390_cur."!cursor_caparray"("primary")
    .lex unicode:"$\x{a2}", rx390_cur
    .local pmc match
    .lex "$/", match
    length rx390_eos, rx390_tgt
    set rx390_off, 0
    lt rx390_pos, 2, rx390_start
    sub rx390_off, rx390_pos, 1
    substr rx390_tgt, rx390_tgt, rx390_off
  rx390_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan394_done
    goto rxscan394_scan
  rxscan394_loop:
    ($P10) = rx390_cur."from"()
    inc $P10
    set rx390_pos, $P10
    ge rx390_pos, rx390_eos, rxscan394_done
  rxscan394_scan:
    set_addr $I10, rxscan394_loop
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  rxscan394_done:
.annotate 'line', 261
  # rx literal  "<"
    add $I11, rx390_pos, 1
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 1
    ne $S10, "<", rx390_fail
    add rx390_pos, 1
  # rx subrule "ident" subtype=capture negate=
    rx390_cur."!cursor_pos"(rx390_pos)
    $P10 = rx390_cur."ident"()
    unless $P10, rx390_fail
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("identifier=ident")
    rx390_pos = $P10."pos"()
  # rx literal  "("
    add $I11, rx390_pos, 1
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 1
    ne $S10, "(", rx390_fail
    add rx390_pos, 1
  # rx rxquantr395 ** 0..1
    set_addr $I398, rxquantr395_done
    rx390_cur."!mark_push"(0, rx390_pos, $I398)
  rxquantr395_loop:
  # rx subrule "primary" subtype=capture negate=
    rx390_cur."!cursor_pos"(rx390_pos)
    $P10 = rx390_cur."primary"()
    unless $P10, rx390_fail
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("primary")
    rx390_pos = $P10."pos"()
  # rx rxquantr396 ** 0..*
    set_addr $I397, rxquantr396_done
    rx390_cur."!mark_push"(0, rx390_pos, $I397)
  rxquantr396_loop:
  # rx literal  ","
    add $I11, rx390_pos, 1
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 1
    ne $S10, ",", rx390_fail
    add rx390_pos, 1
  # rx subrule "primary" subtype=capture negate=
    rx390_cur."!cursor_pos"(rx390_pos)
    $P10 = rx390_cur."primary"()
    unless $P10, rx390_fail
    rx390_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("primary")
    rx390_pos = $P10."pos"()
    (rx390_rep) = rx390_cur."!mark_commit"($I397)
    rx390_cur."!mark_push"(rx390_rep, rx390_pos, $I397)
    goto rxquantr396_loop
  rxquantr396_done:
    (rx390_rep) = rx390_cur."!mark_commit"($I398)
  rxquantr395_done:
  # rx literal  ")>"
    add $I11, rx390_pos, 2
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 2
    ne $S10, ")>", rx390_fail
    add rx390_pos, 2
.annotate 'line', 260
  # rx pass
    rx390_cur."!cursor_pass"(rx390_pos, "primitive")
    rx390_cur."!cursor_debug"("PASS  ", "primitive", " at pos=", rx390_pos)
    .return (rx390_cur)
  rx390_fail:
.annotate 'line', 9
    (rx390_rep, rx390_pos, $I10, $P10) = rx390_cur."!mark_fail"(0)
    lt rx390_pos, -1, rx390_done
    eq rx390_pos, -1, rx390_fail
    jump $I10
  rx390_done:
    rx390_cur."!cursor_fail"()
    rx390_cur."!cursor_debug"("FAIL  ", "primitive")
    .return (rx390_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__primitive"  :subid("94_1283117834.77257") :method
.annotate 'line', 9
    $P392 = self."!PREFIX__!subrule"("identifier=ident", "<")
    new $P393, "ResizablePMCArray"
    push $P393, $P392
    .return ($P393)
.end


.namespace ["mantra";"Grammar"]
.sub "ws"  :subid("95_1283117834.77257") :method :outer("11_1283117834.77257")
.annotate 'line', 9
    .local string rx400_tgt
    .local int rx400_pos
    .local int rx400_off
    .local int rx400_eos
    .local int rx400_rep
    .local pmc rx400_cur
    (rx400_cur, rx400_pos, rx400_tgt) = self."!cursor_start"()
    rx400_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx400_cur
    .local pmc match
    .lex "$/", match
    length rx400_eos, rx400_tgt
    set rx400_off, 0
    lt rx400_pos, 2, rx400_start
    sub rx400_off, rx400_pos, 1
    substr rx400_tgt, rx400_tgt, rx400_off
  rx400_start:
    $I10 = self.'from'()
    ne $I10, -1, rxscan403_done
    goto rxscan403_scan
  rxscan403_loop:
    ($P10) = rx400_cur."from"()
    inc $P10
    set rx400_pos, $P10
    ge rx400_pos, rx400_eos, rxscan403_done
  rxscan403_scan:
    set_addr $I10, rxscan403_loop
    rx400_cur."!mark_push"(0, rx400_pos, $I10)
  rxscan403_done:
.annotate 'line', 268
  # rx subrule "ww" subtype=zerowidth negate=1
    rx400_cur."!cursor_pos"(rx400_pos)
    $P10 = rx400_cur."ww"()
    if $P10, rx400_fail
.annotate 'line', 269
  # rx rxquantr404 ** 0..*
    set_addr $I410, rxquantr404_done
    rx400_cur."!mark_push"(0, rx400_pos, $I410)
  rxquantr404_loop:
  alt405_0:
    set_addr $I10, alt405_1
    rx400_cur."!mark_push"(0, rx400_pos, $I10)
  # rx literal  "#"
    add $I11, rx400_pos, 1
    gt $I11, rx400_eos, rx400_fail
    sub $I11, rx400_pos, rx400_off
    substr $S10, rx400_tgt, $I11, 1
    ne $S10, "#", rx400_fail
    add rx400_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx400_pos, rx400_off
    find_cclass $I11, 4096, rx400_tgt, $I10, rx400_eos
    add rx400_pos, rx400_off, $I11
  # rx rxquantr406 ** 0..1
    set_addr $I407, rxquantr406_done
    rx400_cur."!mark_push"(0, rx400_pos, $I407)
  rxquantr406_loop:
  # rx charclass nl
    ge rx400_pos, rx400_eos, rx400_fail
    sub $I10, rx400_pos, rx400_off
    is_cclass $I11, 4096, rx400_tgt, $I10
    unless $I11, rx400_fail
    substr $S10, rx400_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx400_pos, $I11
    inc rx400_pos
    (rx400_rep) = rx400_cur."!mark_commit"($I407)
  rxquantr406_done:
    goto alt405_end
  alt405_1:
    set_addr $I10, alt405_2
    rx400_cur."!mark_push"(0, rx400_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx400_pos, rx400_off
    find_not_cclass $I11, 32, rx400_tgt, $I10, rx400_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx400_fail
    add rx400_pos, rx400_off, $I11
    goto alt405_end
  alt405_2:
  # rx rxquantr408 ** 1..*
    set_addr $I409, rxquantr408_done
    rx400_cur."!mark_push"(0, -1, $I409)
  rxquantr408_loop:
  # rx charclass nl
    ge rx400_pos, rx400_eos, rx400_fail
    sub $I10, rx400_pos, rx400_off
    is_cclass $I11, 4096, rx400_tgt, $I10
    unless $I11, rx400_fail
    substr $S10, rx400_tgt, $I10, 2
    iseq $I11, $S10, "\r\n"
    add rx400_pos, $I11
    inc rx400_pos
    (rx400_rep) = rx400_cur."!mark_commit"($I409)
    rx400_cur."!mark_push"(rx400_rep, rx400_pos, $I409)
    goto rxquantr408_loop
  rxquantr408_done:
  alt405_end:
    (rx400_rep) = rx400_cur."!mark_commit"($I410)
    rx400_cur."!mark_push"(rx400_rep, rx400_pos, $I410)
    goto rxquantr404_loop
  rxquantr404_done:
.annotate 'line', 267
  # rx pass
    rx400_cur."!cursor_pass"(rx400_pos, "ws")
    rx400_cur."!cursor_debug"("PASS  ", "ws", " at pos=", rx400_pos)
    .return (rx400_cur)
  rx400_fail:
.annotate 'line', 9
    (rx400_rep, rx400_pos, $I10, $P10) = rx400_cur."!mark_fail"(0)
    lt rx400_pos, -1, rx400_done
    eq rx400_pos, -1, rx400_fail
    jump $I10
  rx400_done:
    rx400_cur."!cursor_fail"()
    rx400_cur."!cursor_debug"("FAIL  ", "ws")
    .return (rx400_cur)
    .return ()
.end


.namespace ["mantra";"Grammar"]
.sub "!PREFIX__ws"  :subid("96_1283117834.77257") :method
.annotate 'line', 9
    new $P402, "ResizablePMCArray"
    push $P402, ""
    .return ($P402)
.end


.namespace ["mantra";"Grammar"]
.sub "_block411" :load :anon :subid("97_1283117834.77257")
.annotate 'line', 9
    .const 'Sub' $P413 = "11_1283117834.77257" 
    $P414 = $P413()
    .return ($P414)
.end


.namespace []
.sub "_block416" :load :anon :subid("98_1283117834.77257")
.annotate 'line', 1
    .const 'Sub' $P418 = "10_1283117834.77257" 
    $P419 = $P418()
    .return ($P419)
.end

