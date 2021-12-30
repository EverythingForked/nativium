if(PROJECT_TARGET_NAME STREQUAL "linux")
    # module files
    file(GLOB H_FILES_C "${PROJECT_ROOT_PATH}/projects/others/nativium/include/*.h")
    file(GLOB H_FILES_CXX "${PROJECT_ROOT_PATH}/projects/others/nativium/include/*.hpp")

    file(GLOB S_FILES_CXX "${PROJECT_ROOT_PATH}/projects/others/nativium/src/*.cpp")

    file(GLOB H_FILES_LOGGER_IMPL "${PROJECT_MODULES_PATH}/logger/implementation/cpp/nativium/util/Simple*.hpp")
    file(GLOB S_FILES_LOGGER_IMPL "${PROJECT_MODULES_PATH}/logger/implementation/cpp/nativium/util/Simple*.cpp")

    file(GLOB H_FILES_HTTP_CLIENT_IMPL "${PROJECT_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.hpp")
    file(GLOB S_FILES_HTTP_CLIENT_IMPL "${PROJECT_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.cpp")

    file(GLOB H_FILES_SHARED_DATA_IMPL "${PROJECT_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/Simple*.hpp")
    file(GLOB S_FILES_SHARED_DATA_IMPL "${PROJECT_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/Simple*.cpp")

    file(GLOB H_FILES_FILE_HELPER_IMPL "${PROJECT_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/Simple*.hpp")
    file(GLOB S_FILES_FILE_HELPER_IMPL "${PROJECT_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/Simple*.cpp")

    # header files
    project_add_header_files("${H_FILES_C}")
    project_add_header_files("${H_FILES_CXX}")

    project_add_header_files("${H_FILES_LOGGER_IMPL}")
    project_add_header_files("${H_FILES_HTTP_CLIENT_IMPL}")
    project_add_header_files("${H_FILES_SHARED_DATA_IMPL}")
    project_add_header_files("${H_FILES_FILE_HELPER_IMPL}")

    # source files
    project_add_source_files("${S_FILES_CXX}")

    project_add_source_files("${S_FILES_LOGGER_IMPL}")
    project_add_source_files("${S_FILES_HTTP_CLIENT_IMPL}")
    project_add_source_files("${S_FILES_SHARED_DATA_IMPL}")
    project_add_source_files("${S_FILES_FILE_HELPER_IMPL}")
endif()
