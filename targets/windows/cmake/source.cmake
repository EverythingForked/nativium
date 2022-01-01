# target files
file(GLOB H_FILES_C "${NATIVIUM_ROOT_PATH}/apps/desktop/include/*.h")
file(GLOB H_FILES_CXX "${NATIVIUM_ROOT_PATH}/apps/desktop/include/*.hpp")

file(GLOB S_FILES_CXX "${NATIVIUM_ROOT_PATH}/apps/desktop/src/*.cpp")

# module files
file(GLOB H_FILES_LOGGER_IMPL "${NATIVIUM_MODULES_PATH}/logger/implementation/cpp/nativium/util/Simple*.hpp")
file(GLOB S_FILES_LOGGER_IMPL "${NATIVIUM_MODULES_PATH}/logger/implementation/cpp/nativium/util/Simple*.cpp")

file(GLOB H_FILES_HTTP_CLIENT_IMPL "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.hpp")
file(GLOB S_FILES_HTTP_CLIENT_IMPL "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.cpp")

file(GLOB H_FILES_SHARED_DATA_IMPL "${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/Simple*.hpp")
file(GLOB S_FILES_SHARED_DATA_IMPL "${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/Simple*.cpp")

file(GLOB H_FILES_FILE_HELPER_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/Simple*.hpp")
file(GLOB S_FILES_FILE_HELPER_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/Simple*.cpp")

# header files
nativium_add_header_files("${H_FILES_C}")
nativium_add_header_files("${H_FILES_CXX}")

nativium_add_header_files("${H_FILES_LOGGER_IMPL}")
nativium_add_header_files("${H_FILES_HTTP_CLIENT_IMPL}")
nativium_add_header_files("${H_FILES_SHARED_DATA_IMPL}")
nativium_add_header_files("${H_FILES_FILE_HELPER_IMPL}")

# source files
nativium_add_source_files("${S_FILES_CXX}")

nativium_add_source_files("${S_FILES_LOGGER_IMPL}")
nativium_add_source_files("${S_FILES_HTTP_CLIENT_IMPL}")
nativium_add_source_files("${S_FILES_SHARED_DATA_IMPL}")
nativium_add_source_files("${S_FILES_FILE_HELPER_IMPL}")

# source files merged
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_SOURCE_FILES})
list(APPEND NATIVIUM_SOURCE_FILES_MERGED ${NATIVIUM_HEADER_FILES})
