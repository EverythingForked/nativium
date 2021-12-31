if(NATIVIUM_TARGET STREQUAL "tests")
    # module files
    file(GLOB_RECURSE H_FILES_CXX "${NATIVIUM_ROOT_PATH}/tests/include/*.hpp")
    file(GLOB_RECURSE S_FILES_CXX "${NATIVIUM_ROOT_PATH}/tests/src/*.cpp")

    file(GLOB H_FILES_LOGGER_IMPL "${NATIVIUM_MODULES_PATH}/logger/implementation/cpp/nativium/util/Simple*.hpp")
    file(GLOB S_FILES_LOGGER_IMPL "${NATIVIUM_MODULES_PATH}/logger/implementation/cpp/nativium/util/Simple*.cpp")

    file(GLOB H_FILES_HTTP_CLIENT_IMPL "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.hpp")
    file(GLOB S_FILES_HTTP_CLIENT_IMPL "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.cpp")

    file(GLOB H_FILES_SHARED_DATA_IMPL "${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/Simple*.hpp")
    file(GLOB S_FILES_SHARED_DATA_IMPL "${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/Simple*.cpp")

    file(GLOB H_FILES_FILE_HELPER_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/Simple*.hpp")
    file(GLOB S_FILES_FILE_HELPER_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/Simple*.cpp")

    # header files
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

    # search paths
    nativium_add_search_path("${NATIVIUM_ROOT_PATH}/tests/include")
endif()
