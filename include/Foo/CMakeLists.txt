set(LLVM_TARGET_DEFINITIONS FooOps.td)
mlir_tablegen(FooDialect.h.inc --gen-dialect-decls)
mlir_tablegen(FooDialect.cpp.inc --gen-dialect-defs)
mlir_tablegen(FooOps.h.inc --gen-ops-decls)
mlir_tablegen(FooOps.cpp.inc --gen-ops-defs)