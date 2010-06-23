# $Id$

=head1

class.pir -- class related functions

=cut

.namespace []

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