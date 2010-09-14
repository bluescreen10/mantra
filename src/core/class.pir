# $Id$

=head1

class.pir -- class related functions

=cut

.sub '!call_method'
     .param pmc reciever
     .param string method_name
     .param pmc arguments :slurpy :optional
     $P1 = find_method reciever, 'withArgs:execute:'
     .tailcall reciever.$P1(arguments, method_name)

.end