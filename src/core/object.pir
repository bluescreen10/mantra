# $Id$

=head1 TITLE

object.pir -- Mantra object

=cut

.HLL 'mantra'

.namespace []

.sub 'setup_protoobject'
     $P0 = newclass 'ProtoObject'

     $P0.'add_attribute'('proto')
     $P0.'add_attribute'('state')
     $P0.'add_attribute'('value')
     $P0.'add_attribute'('methods')

     # Register Object
     $P0 = new 'ProtoObject'
     
     # Initialize
     $P0.'__init__'()

     # Set Global
     set_hll_global 'Object', $P0

     # HACK HACK
     'setup_object'()

.end


.sub 'setup_object'
     .local pmc object

     object = get_hll_global 'Object'
     
     .const 'Sub' $P0 = 'new'
     object.'add_method'('new', $P0 ) 

     .const 'Sub' $P0 = 'addMethod:as:'
     object.'add_method'('addMethod:as:', $P0 ) 

.end


.sub '' :anon :subid('new')
     $P0 = find_lex 'self'
     $P1 = find_method $P0, 'copy'
     $P2 = $P0.'copy'()
     .return($P2)
.end


.sub '' :anon :subid('addMethod:as:')
     .param pmc name
     .param pmc subref

     .local pmc selfa, method_name, method_ref

     $P0 = find_lex 'self'

     method_name = name.'get_value'()
     method_ref = subref.'get_value'()

     $P1 = find_method $P0, 'add_method'

     $P0.$P1(method_name, method_ref)
     .return($P0)
.end

.namespace ['ProtoObject']

.sub '__init__' :method

     $P0 = root_new [ 'parrot' ; 'Hash' ]
     setattribute self, 'methods', $P0

     $P1 = root_new [ 'parrot' ; 'Hash' ]
     setattribute self, 'state', $P0

.end

.sub 'add_method' :method
     .param pmc name
     .param pmc subref 

     .local pmc methods
     methods = getattribute self, 'methods'
     
     methods[name] = subref

.end

.sub 'copy' :method
     .local pmc new_object
     new_object = new 'ProtoObject'

     .local pmc state, value, methods

     $P0 = getattribute self, 'state'
     state = clone $P0
     setattribute new_object, 'state', state

     $P0 = getattribute self, 'methods'
     methods = clone $P0
     setattribute new_object, 'methods', methods

     $P0 = getattribute self, 'proto'
     setattribute new_object, 'proto', $P0
     
     $P0 = getattribute self, 'value'
     setattribute new_object, 'value', $P0

     .return(new_object)
.end

.sub 'call_method' :method
     .param pmc name
     .param pmc params :slurpy :optional

     .local pmc methods
     methods = getattribute self,'methods'
     $P0 = methods[name]
     
     unless null $P0 goto setup_call

     # TODO: Throw an exception
     .local pmc msg
     msg = new 'String'
     msg = 'Method not found -> '
     msg = concat msg, name
     die msg

  setup_call:
     ## SET Return point
     .local pmc return, return_value
     return = new 'Continuation'
     set_addr return, done

     .lex ':return_address', return
     .lex ':return_value', return_value
     .lex 'self', self
   
     capture_lex $P0

     ## Has an outer already
     $P1 = $P0.'get_outer'()
     unless null $P1 goto call
     .local pmc ctx
     $P2 = getinterp
     ctx = $P2['context']
     $P2 = getattribute ctx, 'current_sub'
     $P0.'set_outer'($P2)
  
  call:
     return_value = $P0( params :flat )
     
     ## SET 
  done:
     .return(return_value)

.end

.sub 'get_string' :vtable('get_string') :method
     $I0 = get_addr self

     $P0 = new 'ResizablePMCArray'
     push $P0, $I0

     $S0 = sprintf '%#x', $P0
     $S1 = 'ProtoObject('
     $S0 = concat $S1, $S0
     $S1 = ')'
     $S0 = concat $S0, $S1

     .return($S0)
.end

.sub 'set_proto' :method
     .param pmc proto
     setattribute self, 'proto', proto
     .return(self)
.end

.sub 'get_proto' :method
     .local pmc proto
     proto = getattribute self, 'proto'
     .return(proto)
.end

.sub 'set_value' :method
     .param pmc value
     setattribute self, 'value', value
     .return(self)
.end

.sub 'get_value' :method
     .local pmc value
     value = getattribute self, 'value'
     .return(value)
.end


.sub 'copy_set_value' :method
     .param pmc value

     .local pmc new_object 

     new_object = self.'copy'()
     new_object.'set_value'(value)
     
     .return(new_object)
.end
