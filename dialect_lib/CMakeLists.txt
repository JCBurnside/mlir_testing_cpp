add_mlir_dialect_library(MLIRSample
    FooDialect.cpp
    ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/include/Foo
    
    LINK_LIBS PUBLIC
    MLIR
    MLIRFuncDialect
)