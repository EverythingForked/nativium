# module files
file(GLOB H_FILES "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/cpp/nativium/helper/*.hpp")
file(GLOB H_FILES_IMPL "${NATIVIUM_MODULES_PATH}/app-helper/implementation/cpp/nativium/helper/*.hpp")

file(GLOB S_FILES "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/cpp/nativium/helper/*.cpp")
file(GLOB S_FILES_IMPL "${NATIVIUM_MODULES_PATH}/app-helper/implementation/cpp/nativium/helper/*.cpp")

# project files
nativium_add_header_files("${H_FILES}")
nativium_add_header_files("${H_FILES_IMPL}")

nativium_add_source_files("${S_FILES}")
nativium_add_source_files("${S_FILES_IMPL}")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-helper/implementation/cpp")

# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # module files
    file(GLOB_RECURSE H_FILES_APP_HELPERS "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_APP_HELPERS "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/jni/*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_APP_HELPERS}")

    # source files
    nativium_add_source_files("${S_FILES_APP_HELPERS}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/jni")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # module files
    file(GLOB_RECURSE H_FILES_APP_HELPERS "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/objc/*.h")
    file(GLOB_RECURSE S_FILES_APP_HELPERS "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/objc/*.mm")

    # header files
    nativium_add_header_files("${H_FILES_APP_HELPERS}")

    # source files
    nativium_add_source_files("${S_FILES_APP_HELPERS}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/objc")
endif()
