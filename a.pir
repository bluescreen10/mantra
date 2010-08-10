.HLL 'mantra'



.namespace ["Startup"]
.sub "main" :method
    .return ($P14)
.end

.sub '!create_class'
     .param string classname
     .param pmc parents :slurpy
     .local pmc it

      $P0 = newclass classname
     .return ()
.end

.sub "say"

.end

.sub "_block11" :anon

    "!create_class"("Startup")
$P0 = new "Startup"
    .return ()
.end
