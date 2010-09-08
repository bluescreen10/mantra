class mantra::Loader;

method import($class) {
    my @inc := pir::get_hll_global__PS('@INC');

    my $separator := self.separator();
    my @ns := pir::split__PSS('.', $class);
    my $module_name := pir::join($separator,@ns);
    $module_name := $module_name ~ '.ma';

    my $pm_file := "src/lib/"~$module_name;
    my $fh     := pir::open__PSS($pm_file, 'r');
    $fh.encoding('utf8');
    my $source := $fh.readall();
    $fh.close();
    my $eval := mantra::Compiler.compile($source);
    $eval();
    1;
}

method separator() {
    our $PATH_SEPARATOR;

    unless $PATH_SEPARATOR {
        $PATH_SEPARATOR := Q:PIR {
            .include 'iglobals.pasm'
            $P0 = getinterp
            $P1 = $P0[.IGLOBALS_CONFIG_HASH]
            %r = $P1['slash']
        };
    }
    return $PATH_SEPARATOR;
}
