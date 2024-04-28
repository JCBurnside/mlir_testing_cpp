include "Foo/FooDialect.td"

def Constant_FooOp : FooOp<"ConstantValue"> {
    let args = (ins I32:$value)
}