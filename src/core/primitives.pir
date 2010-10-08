# $Id$

=head1

primitives.pir -- Mantra primitives

=cut
.include 'iglobals.pasm'

.loadlib 'io_ops'

.namespace []

.sub 'new'
     .param pmc object
     $P1 = typeof object
     $P2 = clone $P1
     $P3 = new $P2
     .return($P3)
.end

.sub 'load'
     .param pmc module

     # Replace the "." with "/"
     $S0 = module
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

.sub 'startup' :load
     load("System")
.end