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

.sub 'new' :method
     $P0 = typeof self
     $P1 = clone $P0
     $P2 = new $P1
     .return($P2)
.end

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
     .lex 'self', self
     $P0 = find_method self, method_name
     if method_name == "new" goto method_call
     if method_name == "addMethod:as:" goto method_call
     if method_name == "execute:withArgs:" goto method_call
     capture_lex $P0
     .tailcall $P0(arguments :flat)
     .return()
method_call:
     .tailcall self.$P0(arguments :flat)
.end