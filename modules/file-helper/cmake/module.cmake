# module files
file(GLOB H_FILES "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/cpp/nativium/io/FileHelper*.hpp")
file(GLOB H_FILES_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/FileHelper*.hpp")

file(GLOB S_FILES "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/cpp/nativium/io/FileHelper*.cpp")
file(GLOB S_FILES_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/FileHelper*.cpp")

# project files
nativium_add_header_files("${H_FILES}")
nativium_add_header_files("${H_FILES_IMPL}")

nativium_add_source_files("${S_FILES}")
nativium_add_source_files("${S_FILES_IMPL}")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp")

# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # module files
    file(GLOB_RECURSE H_FILES_FILE_HELPER "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_FILE_HELPER "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/jni/*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_FILE_HELPER}")

    # source files
    nativium_add_source_files("${S_FILES_FILE_HELPER}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/jni")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # module files
    file(GLOB_RECURSE H_FILES_FILE_HELPER "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/objc/*.h")
    file(GLOB_RECURSE S_FILES_FILE_HELPER "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/objc/*.mm")

    file(GLOB H_FILES_FILE_HELPER_PLATFORM "${NATIVIUM_MODULES_PATH}/file-helper/implementation/objc/nativium/io/*.h")
    file(GLOB S_FILES_FILE_HELPER_PLATFORM "${NATIVIUM_MODULES_PATH}/file-helper/implementation/objc/nativium/io/*.m")

    # header files
    nativium_add_header_files("${H_FILES_FILE_HELPER}")
    nativium_add_header_files("${H_FILES_FILE_HELPER_PLATFORM}")

    # source files
    nativium_add_source_files("${S_FILES_FILE_HELPER}")
    nativium_add_source_files("${S_FILES_FILE_HELPER_PLATFORM}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/objc")
elseif("${NATIVIUM_TARGET}" MATCHES "^(linux|macos|windows)$")
    # module files
    file(GLOB H_FILES_FILE_HELPER_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/Simple*.hpp")
    file(GLOB S_FILES_FILE_HELPER_IMPL "${NATIVIUM_MODULES_PATH}/file-helper/implementation/cpp/nativium/io/Simple*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_FILE_HELPER_IMPL}")

    # source files
    nativium_add_source_files("${S_FILES_FILE_HELPER_IMPL}")
endif()
