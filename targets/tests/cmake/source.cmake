# target files
file(GLOB_RECURSE H_FILES_CXX "${NATIVIUM_ROOT_PATH}/apps/tests/include/*.hpp")
file(GLOB_RECURSE S_FILES_CXX "${NATIVIUM_ROOT_PATH}/apps/tests/src/*.cpp")

# header files
nativium_add_header_files("${H_FILES_CXX}")

# source files
nativium_add_source_files("${S_FILES_CXX}")

# search paths
nativium_add_search_path("${NATIVIUM_ROOT_PATH}/apps/tests/include")

# source files merged
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_SOURCE_FILES})
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_HEADER_FILES})
