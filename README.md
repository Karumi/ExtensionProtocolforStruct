When compiling the ExtensionProtocolforStruct project the linker crash with the following error message:

```
Undefined symbols for architecture x86_64:
  "__TFV9submodule10testStructg3fooSS", referenced from:
      __TTWV9submodule10testStruct26ExtensionProtocolforStruct12testProtocolS1_FS2_g3fooSS in ProtocolExtension.o
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```

The setup is:

1 - Declare a public struct in a framework

```

public struct TestStruct {
    public let foo: String = ""
}

```

- Declare a protocol that matches the property names of the struct in your project

```
protocol TestProtocol {
    
    var foo: String { get }
    
}
```

- Declare an extension for the struct that implements the protocol

```
extension TestStruct : TestProtocol { }
```

Expected: The code compiles and runs

Actual: The linking breaks with the error described at the beginning.

Note: If we use a class instead of a struct, the code works as expected
