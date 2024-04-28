
include "mlir/IR/DialectBase.td"
include "mlir/IR/AttrTypeBase.td"
include "mlir/IR/OpBase.td"
def FooDialect : Dialect {
    let name = "foo";

    let summary = "just some testing";

    let description = [{
        Lorem Ipsum
    }];

    let cppNamespace = "foo";

    let dependentDialects = [
        "arith::ArithDialect",
        "func::FuncDialect"
    ];
}

class FooOp<string mnemonic, list<Trait> traits = []> : Op<FooDialect,mnemonic,traits>;
