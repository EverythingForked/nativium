# module files
file(GLOB H_FILES "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/cpp/nativium/domain/*.hpp")
file(GLOB H_FILES_IMPL "${NATIVIUM_MODULES_PATH}/app-domain/implementation/cpp/nativium/domain/*.hpp")

file(GLOB S_FILES "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/cpp/nativium/domain/*.cpp")
file(GLOB S_FILES_IMPL "${NATIVIUM_MODULES_PATH}/app-domain/implementation/cpp/nativium/domain/*.cpp")

# header files
nativium_add_header_files("${H_FILES}")
nativium_add_header_files("${H_FILES_IMPL}")

# source files
nativium_add_source_files("${S_FILES}")
nativium_add_source_files("${S_FILES_IMPL}")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-domain/implementation/cpp")

# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # module files
    file(GLOB_RECURSE H_FILES_APP_DOMAIN "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_APP_DOMAIN "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/jni/*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_APP_DOMAIN}")

    # source files
    nativium_add_source_files("${S_FILES_APP_DOMAIN}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/jni")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # module files
    file(GLOB_RECURSE H_FILES_APP_DOMAIN "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/objc/*.h")
    file(GLOB_RECURSE S_FILES_APP_DOMAIN "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/objc/*.mm")

    # header files
    nativium_add_header_files("${H_FILES_APP_DOMAIN}")

    # source files
    nativium_add_source_files("${S_FILES_APP_DOMAIN}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/objc")
endif()
