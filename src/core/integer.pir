# $Id$

=head1

integer.pir -- Mantra object

=cut

.HLL "mantra"

.namespace []

.sub 'setup_integer'
     $P0 = get_hll_global "Object"
     
     # Clone Object
     $P1 = typeof $P0
     $P2 = clone $P1

     # Add data attribute     
     addattribute $P2, '!data'

     .const 'Sub' $P3 = 'Integer_!new:'
     addmethod $P2, '!new:' , $P3

     .const 'Sub' $P3 = 'Integer_!data'
     addmethod $P2, '!data' , $P3

     $P1 = new $P2
     set_hll_global "Integer", $P1
.end

 .sub '' :anon :subid('Integer_!new:')
      .param pmc self
      .param pmc value
      .local pmc new_object
      new_object = clone self

      setattribute new_object, '!data', value
      .return(new_object)
.end

.sub '' :anon :subid('Integer_!data')
     .param pmc self
     .local pmc value
     value = getattribute self, '!data'
     .return(value)
.end
