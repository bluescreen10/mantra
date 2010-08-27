# $Id$

=head1

loader.pir -- Loads up other classes

=cut

=head2 load_class

load_class("Core.System");

=cut

.loadlib 'string_ops'

.sub 'load_class'

     .param string classname
     .include 'iglobals.pasm'
     
     .local pmc interp, config, namespace
     .local string filename, separator
     interp = getinterp
     config = interp[.IGLOBALS_CONFIG_HASH]
     separator = config['slash']
     split namespace, '.', classname
     join filename, separator, namespace
     concat filename, '.ma'
     concat filename, 'examples/', filename
     say filename
     $P0 = compreg 'mantra'
     $P0.'evalfiles'(filename)
     .return()
.end

.sub 'main' :main
     'load_class'('Object')
.end