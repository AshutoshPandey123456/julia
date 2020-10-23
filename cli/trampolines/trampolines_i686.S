#include "../../src/jl_exported_funcs.inc"

#define XX(name) \
name##:; \
    endbr32; \
    jmpl *(name##_addr); \
    ud2; \

JL_EXPORTED_FUNCS(XX)
#undef XX
