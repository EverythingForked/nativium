# target files
file(GLOB H_FILES_C "${NATIVIUM_ROOT_PATH}/apps/wasm/include/*.h")
file(GLOB H_FILES_CXX "${NATIVIUM_ROOT_PATH}/apps/wasm/include/*.hpp")

file(GLOB S_FILES_CXX "${NATIVIUM_ROOT_PATH}/apps/wasm/src/*.cpp")

# header files
nativium_add_header_files("${H_FILES_C}")
nativium_add_header_files("${H_FILES_CXX}")

# source files
nativium_add_source_files("${S_FILES_CXX}")

# source files merged
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_SOURCE_FILES})
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_HEADER_FILES})
