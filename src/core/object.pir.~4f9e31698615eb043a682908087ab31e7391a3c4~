# $Id$

=head1

object.pir -- Mantra object

=cut


.HLL "mantra"

.namespace []

.sub '' :anon :load
     $P1 = newclass 'ProtoObject'
     $P2 = new 'ProtoObject'
     set_hll_global "Object", $P2
.end

.namespace ['ProtoObject']


.sub 'addMethod:as:' :method
     .param string method_name
     .param pmc block
     $P0 = typeof self
     $P1 = find_method block, 'content'
     $P2 = block.$P1()
     $P0.'add_method'(method_name,$P2)
     .return()
.end

.sub 'execute:withArgs:' :method
     .param string method_name
     .param pmc arguments :slurpy :optional

     $P0 = new 'Continuation'
     set_addr $P0, retr_point

     .lex '!retr', $P0
     .lex 'self', self

     $P99 = new 'Integer'
     .lex '!retr_value', $P99
     store_lex '!retr_value', self

     $P2 = find_method self, method_name
     if method_name == "addMethod:as:" goto method_call
     if method_name == "execute:withArgs:" goto method_call
     capture_lex $P2
     $P2(arguments :flat)
     goto retr_point
method_call:
     self.$P2(arguments :flat)
retr_point:
     $P1 = find_lex '!retr_value'
     .return($P1)
.end