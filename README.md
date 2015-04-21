When compiling the ExtensionProtocolforStruct project the linker crash with the following error message:

Undefined symbols for architecture x86_64:
  "__TFV9submodule10testStructg3fooSS", referenced from:
      __TTWV9submodule10testStruct26ExtensionProtocolforStruct12testProtocolS1_FS2_g3fooSS in ProtocolExtension.o
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
