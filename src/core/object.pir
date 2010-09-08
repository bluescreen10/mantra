# $Id$

=head1

object.pir -- Mantra object

=cut


.HLL "mantra"

.namespace []

.sub '' :anon :load
     $P1 = newclass 'ProtoObject'
     $P2 = new 'ProtoObject'
     set_global "Object", $P2
.end

.namespace ['ProtoObject']

.sub 'new1' :method
     $P0 = typeof self
     $P1 = clone $P0
     $P2 = new $P1
     .return($P2)
.end

.sub 'addMethod:as:' :method
     .param string method_name
     .param pmc block
     $P0 = typeof self
     $P0.'add_method'(method_name,block)
     .return()
.end
