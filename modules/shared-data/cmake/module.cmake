# module files
file(GLOB H_FILES "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/cpp/nativium/data/SharedData*.hpp")
file(GLOB H_FILES_IMPL "${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/SharedData*.hpp")

file(GLOB S_FILES "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/cpp/nativium/data/SharedData*.cpp")
file(GLOB S_FILES_IMPL "${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/SharedData*.cpp")

# project files
nativium_add_header_files("${H_FILES}")
nativium_add_header_files("${H_FILES_IMPL}")

nativium_add_source_files("${S_FILES}")
nativium_add_source_files("${S_FILES_IMPL}")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp")

# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # module files
    file(GLOB_RECURSE H_FILES_SHARED_DATA "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_SHARED_DATA "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/jni/*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_SHARED_DATA}")

    # source files
    nativium_add_source_files("${S_FILES_SHARED_DATA}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/jni")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # module files
    file(GLOB_RECURSE H_FILES_SHARED_DATA "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/objc/*.h")
    file(GLOB_RECURSE S_FILES_SHARED_DATA "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/objc/*.mm")

    file(GLOB H_FILES_SHARED_DATA_PLATFORM "${NATIVIUM_MODULES_PATH}/shared-data/implementation/objc/nativium/data/*.h")
    file(GLOB S_FILES_SHARED_DATA_PLATFORM "${NATIVIUM_MODULES_PATH}/shared-data/implementation/objc/nativium/data/*.m")

    # header files
    nativium_add_header_files("${H_FILES_SHARED_DATA}")
    nativium_add_header_files("${H_FILES_SHARED_DATA_PLATFORM}")

    # source files
    nativium_add_source_files("${S_FILES_SHARED_DATA}")
    nativium_add_source_files("${S_FILES_SHARED_DATA_PLATFORM}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/objc")
elseif("${NATIVIUM_TARGET}" MATCHES "^(linux|macos|windows)$")
    # module files
    file(GLOB H_FILES_SHARED_DATA_IMPL "${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/Simple*.hpp")
    file(GLOB S_FILES_SHARED_DATA_IMPL "${NATIVIUM_MODULES_PATH}/shared-data/implementation/cpp/nativium/data/Simple*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_SHARED_DATA_IMPL}")

    # source files
    nativium_add_source_files("${S_FILES_SHARED_DATA_IMPL}")
endif()
