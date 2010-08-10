# $Id$

=head1

class.pir -- class related functions

=cut

.sub '!create_class'
     .param string classname
     .param pmc parents :slurpy
     .local pmc it

      #create class
      $P0 = newclass classname

      # Add parents
      it = iter parents
      iter_loop:
        unless it goto iter_end
        $P1 = shift it
        addparent $P0, $P1
        goto iter_loop
      iter_end:

     .return ()
.end

.sub '!call_method'
     .param pmc reciever
     .param string method_name
     .param pmc arguments :slurpy :optional
#     "say"("reciever:")
#     "say"(reciever)
#     "say"("method name:")
#     "say"(method_name)
#     "say"("arguments:")
#     "say"(arguments)
 
     $P3 = find_method reciever, method_name
     .tailcall reciever.$P3(arguments :flat)

.end