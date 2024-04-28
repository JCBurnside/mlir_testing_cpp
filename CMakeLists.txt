project(MLIRTesting)
cmake_minimum_required(VERSION 3.22)
set(CMAKE_BUILD_WITH_INSTALL_NAME_DIR ON)

set(CMAKE_CXX_STANDARD 17 CACHE STRING "C++ standard to conform to")
find_package(LLVM REQUIRED CONFIG)
find_package(MLIR REQUIRED CONFIG)
set(LLVM_RUNTIME_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/bin)
set(LLVM_LIBRARY_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/lib)
set(MLIR_BINARY_DIR ${CMAKE_BINARY_DIR})

list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")

include(TableGen)
include(AddLLVM)
include(AddMLIR)
include(HandleLLVMOptions)

include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${MLIR_INCLUDE_DIRS})
include_directories(Foo)
add_subdirectory(Foo)
add_subdirectory(dialect_lib)
get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
add_llvm_executable(
    main
    src/main.cpp
)

llvm_update_compile_flags(main)

target_link_libraries(main
    PRIVATE
    ${dialect_libs}
    MLIRArithDialect
    MLIROptLib
    MLIRSample
)
mlir_check_all_link_libraries(main)