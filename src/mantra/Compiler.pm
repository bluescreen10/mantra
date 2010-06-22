class mantra::Compiler is HLL::Compiler;

INIT {
    mantra::Compiler.language('mantra');
    mantra::Compiler.parsegrammar(mantra::Grammar);
    mantra::Compiler.parseactions(mantra::Actions);
}
