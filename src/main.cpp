#include "mlir/IR/MLIRContext.h"
#include "mlir/InitAllDialects.h"
#include "mlir/InitAllPasses.h"
#include "Foo/FooDialect.h"
#include <iostream>
int main() {
    mlir::DialectRegistry reg;
    reg.insert<foo::FooDialect>()
    std::cout << "yatta?";
}