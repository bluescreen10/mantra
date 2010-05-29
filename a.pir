
.sub 'say'
    .param pmc args            :slurpy
    .local pmc it
    it = iter args
  iter_loop:
    unless it goto iter_end
    $P0 = shift it
    print $P0
    goto iter_loop
  iter_end:
    print "\n"
    .return ()
.end

.sub '!call_method'
     .param pmc reciever
     .param string method_name
     .param pmc arguments :slurpy
     "say"(method_name)
.end

.sub 'main' :main
    .param pmc args
     $P0 = new 'ResizablePMCArray'
     push $P0, "moo"
    "!call_method"($P0,"adasd")

.end

