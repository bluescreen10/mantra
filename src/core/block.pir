# $Id$

=head1

block.pir -- Mantra object

=cut

.HLL "mantra"

.namespace []

.sub 'setup_block'
     $P0 = newclass 'ProtoBlock'
     addattribute $P0, 'content'
     addattribute $P0, 'context'
     $P1 = new 'ProtoBlock'
     set_hll_global "Block", $P1
.end

.namespace ['ProtoBlock']

.sub 'content:' :method
     .param pmc block
     .local pmc interp
     $P0 = clone self
     interp = getinterp
     $P1 = interp['context';1]
     setattribute $P0, 'content', block
     setattribute $P0, 'context', $P1
     .return($P0)
.end

.sub 'content' :method
     $P0 = getattribute self, 'content'
     .return($P0)
.end

.sub 'execute:withArgs:' :method
     .param string method_name
     .param pmc arguments :slurpy :optional
     $P0 = find_method self, method_name
     .tailcall self.$P0(arguments :flat)
.end

.sub 'call' :method
     $P1 = getattribute self, 'content'
#     find_lex $P0, "self"
     .tailcall $P1()
.end
