# module files
file(GLOB H_FILES "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/cpp/nativium/util/Logger*.hpp")
file(GLOB H_FILES_IMPL "${NATIVIUM_MODULES_PATH}/logger/implementation/cpp/nativium/util/Logger*.hpp")

file(GLOB S_FILES "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/cpp/nativium/util/Logger*.cpp")
file(GLOB S_FILES_IMPL "${NATIVIUM_MODULES_PATH}/logger/implementation/cpp/nativium/util/Logger*.cpp")

# project files
nativium_add_header_files("${H_FILES}")
nativium_add_header_files("${H_FILES_IMPL}")

nativium_add_source_files("${S_FILES}")
nativium_add_source_files("${S_FILES_IMPL}")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/logger/implementation/cpp")

# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # module files
    file(GLOB_RECURSE H_FILES_LOGGER "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_LOGGER "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/jni/*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_LOGGER}")

    # source files
    nativium_add_source_files("${S_FILES_LOGGER}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/jni")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # module files
    file(GLOB_RECURSE H_FILES_LOGGER "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/objc/*.h")
    file(GLOB_RECURSE S_FILES_LOGGER "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/objc/*.mm")

    file(GLOB H_FILES_LOGGER_PLATFORM "${NATIVIUM_MODULES_PATH}/logger/implementation/objc/nativium/util/*.h")
    file(GLOB S_FILES_LOGGER_PLATFORM "${NATIVIUM_MODULES_PATH}/logger/implementation/objc/nativium/util/*.m")

    # header files
    nativium_add_header_files("${H_FILES_LOGGER}")
    nativium_add_header_files("${H_FILES_LOGGER_PLATFORM}")

    # source files
    nativium_add_source_files("${S_FILES_LOGGER}")
    nativium_add_source_files("${S_FILES_LOGGER_PLATFORM}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/objc")
elseif("${NATIVIUM_TARGET}" MATCHES "^(linux|macos|windows)$")
    # module files
    file(GLOB H_FILES_LOGGER_IMPL "${NATIVIUM_MODULES_PATH}/logger/implementation/cpp/nativium/util/Simple*.hpp")
    file(GLOB S_FILES_LOGGER_IMPL "${NATIVIUM_MODULES_PATH}/logger/implementation/cpp/nativium/util/Simple*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_LOGGER_IMPL}")

    # source files
    nativium_add_source_files("${S_FILES_LOGGER_IMPL}")
endif()
