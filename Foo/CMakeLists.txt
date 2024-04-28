
# add_mlir_dialect(FooDialect foo)
# add_mlir_doc(FooDialect FooDialect Foo/ -gen-dialect-doc)
mlir_tablegen(FooDialect.h.inc --gen-dialect-decls)