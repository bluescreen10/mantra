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
     $P0.'add_attribute'('messages')

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
     object.'set_message'('new', $P0 ) 

     .const 'Sub' $P0 = 'message:as:'
     object.'set_message'('message:as:', $P0 ) 

.end


.sub '' :anon :subid('new')
     $P0 = find_lex 'self'
     $P1 = find_method $P0, 'copy'
     $P2 = $P0.'copy'()
     .return($P2)
.end


.sub '' :anon :subid('message:as:')
     .param pmc name
     .param pmc block

     .local pmc selfa, method_name, method_ref

     $P0 = find_lex 'self'

     method_name = name.'get_value'()
     method_ref = block.'get_value'()

     $P1 = find_method $P0, 'set_message'

     $P0.$P1(method_name, method_ref)
     .return($P0)
.end

.namespace ['ProtoObject']

.sub '__init__' :method

     $P0 = root_new [ 'parrot' ; 'Hash' ]
     setattribute self, 'messages', $P0

     $P1 = root_new [ 'parrot' ; 'Hash' ]
     setattribute self, 'state', $P0

.end

.sub 'set_message' :method
     .param pmc name
     .param pmc block 

     .local pmc messages
     messages = getattribute self, 'messages'
     
     messages[name] = block

.end

.sub 'copy' :method
     .local pmc new_object
     new_object = new 'ProtoObject'

     .local pmc state, value, messages

     $P0 = getattribute self, 'state'
     state = clone $P0
     setattribute new_object, 'state', state

     $P0 = getattribute self, 'messages'
     messages = clone $P0
     setattribute new_object, 'messages', messages

     $P0 = getattribute self, 'proto'
     setattribute new_object, 'proto', $P0
     
     $P0 = getattribute self, 'value'
     setattribute new_object, 'value', $P0

     .return(new_object)
.end

.sub 'send_message' :method
     .param pmc name
     .param pmc params :slurpy :optional

     .local pmc messages
     messages = getattribute self,'messages'
     $P0 = messages[name]
     
     unless null $P0 goto setup_call

     # TODO: Throw an exception
     .local pmc msg
     msg = new 'String'
     msg = 'Message not found -> '
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
