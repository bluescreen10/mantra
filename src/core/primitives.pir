# $Id$

=head1

primitives.pir -- Mantra primitives

=cut
.include 'iglobals.pasm'

.loadlib 'io_ops'

.namespace []

.sub 'load'
     .param pmc module


     $P0 = typeof module
     if $P0 == 'String' goto core_string
     $P0 = module.'get_value'()
     goto start_loading
   core_string:
     $P0 = module

#     print "Loading:"
#     say $P0


   start_loading:
     # See if already loaded
     $P1 = get_hll_global '!%PACKAGES'
     if null $P1 goto create 
     $I0 = exists $P1[$P0]
     if $I0 == 0 goto load_module
     .return()
   create:
     $P1 = new 'Hash'
     set_hll_global '!%PACKAGES', $P1
   load_module:
     $P1 = get_hll_global '!%PACKAGES'
     $P1[$P0] = 1
     # Replace the "." with "/"
     $S0 = $P0
     $P0 = split '.', $S0
     $S1 = '!path_separator'()
     $S0 = join $S1, $P0
     $S0 = concat $S0, '.ma'

     # Get the inc
     $P0 = get_hll_global '!INC'
     unless_null $P0, vivify_inc
     $P0 = root_new ['parrot';'ResizableStringArray']
     $P0.'push'('./src/lib')
     set_hll_global '!INC', $P0
vivify_inc:
     .local pmc iterator
     .local string filename
     iterator = iter $P0

iter_loop:
     unless iterator goto iter_done
     $P1 = shift iterator
     $S2 = $P1
     $S2 = concat $S2, $S1
     $S3 = concat $S2, $S0

     # File exists?
     $I0 = stat $S3, 0

     unless $I0 goto iter_loop
     filename = $S3
iter_done:
     $P3 = new 'Integer'
     $P3 = 0
     unless filename goto done
     $P1 = open filename, "r"
     $P2 = $P1.'readall'()
     $P1.'close'()

     $P1 = get_hll_global ["mantra"], "Compiler"
     $P3 = $P1."compile"($P2)
     $P3()
     $P3 = new 'Integer'
     $P3 = 1
done:
     .return($P3)
.end

.sub '!path_separator'
     $P0 = getinterp
     $P1 = $P0[.IGLOBALS_CONFIG_HASH]
     $P2 = $P1['slash']
     .return($P2)
.end

# .sub 'startup' :load
#      load("System")
# .end

.sub 'printString'
     .param pmc String

     $P0 = find_method String, 'get_value'
     $P0 = String.$P0()

     say $P0
.end

# String's

.sub concat
     .param pmc aString
     .param pmc anotherString

     .local pmc first, second, result

     first = aString.'get_value'()
     second = anotherString.'get_value'()

     result = concat first, second

     $P0 = get_hll_global 'String'
     .tailcall $P0.'copy_set_value'(result)
.end

.sub stringCopyFromTo
     .param pmc source
     .param pmc from
     .param pmc to

     $P0 = '!extract_data'(source)
     $P1 = '!extract_data'(from)
     $P2 = '!extract_data'(to)


     # our base index is 1 not 0
     $I1 = $P1
     $I2 = $P2
     $I1 = $I1 - 1
     $I2 = $I2 - 1

     $S0 = $P0

     $S0 = substr $S0, $I1, $I2

     $P3 = get_hll_global 'String'     
     $P4 = find_method $P3, 'set_value'

     $P3 = $P3.$P4($S0)
     .return($P3)
.end

.sub '!extract_data'
     .param pmc object

     $P0 = find_method object, 'get_value'
     $P0 = object.$P0()

     .return($P0)
.end


.sub 'blockcall'
     .param pmc block
     
     .local pmc coderef
     coderef = block.'get_value'()

     .tailcall coderef()
     
.end

.sub 'sameobject'
     .param pmc object1
     .param pmc object2

     $P0 = get_hll_global 'true'

     eq_addr object1, object2, done
     $P0 = get_hll_global 'false'

  done:
    .return($P0)
.end