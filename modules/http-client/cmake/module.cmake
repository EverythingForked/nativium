# configuration
set(NATIVIUM_USE_CXX_HTTP_CLIENT
    NO
    CACHE STRING "CXX Http Client"
)

# module files
file(GLOB H_FILES "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/cpp/nativium/net/http/HttpClient*.hpp")
file(GLOB H_FILES_IMPL "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/HttpClient*.hpp")

file(GLOB S_FILES "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/cpp/nativium/net/http/HttpClient*.cpp")
file(GLOB S_FILES_IMPL "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/HttpClient*.cpp")

# project files
nativium_add_header_files("${H_FILES}")
nativium_add_header_files("${H_FILES_IMPL}")

nativium_add_source_files("${S_FILES}")
nativium_add_source_files("${S_FILES_IMPL}")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp")

# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # module files
    file(GLOB_RECURSE H_FILES_HTTP_CLIENT "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_HTTP_CLIENT "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/jni/*.cpp")

    # platform files
    if(NATIVIUM_USE_CXX_HTTP_CLIENT)
        file(GLOB H_FILES_HTTP_CLIENT_CXX "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.hpp")
        file(GLOB S_FILES_HTTP_CLIENT_CXX "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.cpp")

        nativium_add_header_files("${H_FILES_HTTP_CLIENT_CXX}")
        nativium_add_source_files("${S_FILES_HTTP_CLIENT_CXX}")
    endif()

    # header files
    nativium_add_header_files("${H_FILES_HTTP_CLIENT}")

    # source files
    nativium_add_source_files("${S_FILES_HTTP_CLIENT}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/jni")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # module files
    file(GLOB_RECURSE H_FILES_HTTP_CLIENT "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/objc/*.h")
    file(GLOB_RECURSE S_FILES_HTTP_CLIENT "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/objc/*.mm")

    file(GLOB H_FILES_HTTP_CLIENT_PLATFORM "${NATIVIUM_MODULES_PATH}/http-client/implementation/objc/nativium/net/http/*.h")
    file(GLOB S_FILES_HTTP_CLIENT_PLATFORM "${NATIVIUM_MODULES_PATH}/http-client/implementation/objc/nativium/net/http/*.m")

    # platform files
    if(NATIVIUM_USE_CXX_HTTP_CLIENT)
        file(GLOB H_FILES_HTTP_CLIENT_CXX "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.hpp")
        file(GLOB S_FILES_HTTP_CLIENT_CXX "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.cpp")

        nativium_add_header_files("${H_FILES_HTTP_CLIENT_CXX}")
        nativium_add_source_files("${S_FILES_HTTP_CLIENT_CXX}")
    endif()

    # header files
    nativium_add_header_files("${H_FILES_HTTP_CLIENT}")
    nativium_add_header_files("${H_FILES_HTTP_CLIENT_PLATFORM}")

    # source files
    nativium_add_source_files("${S_FILES_HTTP_CLIENT}")
    nativium_add_source_files("${S_FILES_HTTP_CLIENT_PLATFORM}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/objc")
elseif("${NATIVIUM_TARGET}" MATCHES "^(linux|macos|windows)$")
    # module files
    file(GLOB H_FILES_HTTP_CLIENT_IMPL "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.hpp")
    file(GLOB S_FILES_HTTP_CLIENT_IMPL "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_HTTP_CLIENT_IMPL}")

    # source files
    nativium_add_source_files("${S_FILES_HTTP_CLIENT_IMPL}")
endif()
