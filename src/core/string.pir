# $Id$

=head1

string.pir -- Mantra object

=cut

.HLL "mantra"

.namespace []

.sub 'setup_string'
     $P0 = get_hll_global "Object"
     
     # Clone Object
     $P1 = typeof $P0
     $P2 = clone $P1

     # Add data attribute     
     addattribute $P2, '!data'

     .const 'Sub' $P3 = 'String_!data:'
     addmethod $P2, '!data:' , $P3

     .const 'Sub' $P3 = 'String_!data'
     addmethod $P2, '!data' , $P3

     $P1 = new $P2
     set_hll_global "String", $P1
.end

 .sub '' :anon :subid('String_!data:')
      .param pmc self
      .param pmc value
      .local pmc new_object
      new_object = clone self

      setattribute new_object, '!data', value
      .return(new_object)
.end

.sub '' :anon :subid('String_!data')
     .param pmc self
     .local pmc value
     value = getattribute self, '!data'
     .return(value)
.end
