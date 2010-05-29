# $Id$

=head1

memory.pir -- prints the memory address of an object

=cut

.namespace []

.sub 'memory'
    .param pmc args
    #$P0 = typeof args
    print args
    print "\n"
    .return ()
.end

.sub '!create_class'
     .param string classname
     .param pmc parents               :slurpy
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
     $P3 = find_method reciever, method_name
     .tailcall reciever.$P3(arguments :flat)

.end