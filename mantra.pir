# $Id$

=head1 TITLE

mantra.pir - A mantra compiler.

=head2 Description

This is the entry point for the mantra compiler.

=head2 Functions

=over 4

=item main(args :slurpy)  :main

Start compilation by passing any command line C<args>
to the mantra compiler.

=cut

.sub 'main' :main
    .param pmc args

    load_language 'mantra'

    $P0 = compreg 'mantra'
    $P0.'evalfiles'('examples/Object.ma')
    $P1 = $P0.'command_line'(args)

    # Startup Code
    $P2 = new "Startup"
    $P2."main"()

.end

=back

=cut

