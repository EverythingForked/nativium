# module files
file(GLOB H_FILES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/cpp/nativium/systemservice/*.hpp")
file(GLOB H_FILES_IMPL "${NATIVIUM_MODULES_PATH}/app-system-service/implementation/cpp/nativium/systemservice/*.hpp")

file(GLOB S_FILES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/cpp/nativium/systemservice/*.cpp")
file(GLOB S_FILES_IMPL "${NATIVIUM_MODULES_PATH}/app-system-service/implementation/cpp/nativium/systemservice/*.cpp")

# project files
nativium_add_header_files("${H_FILES}")
nativium_add_header_files("${H_FILES_IMPL}")

nativium_add_source_files("${S_FILES}")
nativium_add_source_files("${S_FILES_IMPL}")

# search paths
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/cpp")
nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-system-service/implementation/cpp")

# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # module files
    file(GLOB_RECURSE H_FILES_APP_SYSTEM_SERVICES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_APP_SYSTEM_SERVICES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/jni/*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_APP_SYSTEM_SERVICES}")

    # source files
    nativium_add_source_files("${S_FILES_APP_SYSTEM_SERVICES}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/jni")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # module files
    file(GLOB_RECURSE H_FILES_APP_SYSTEM_SERVICES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/objc/*.h")
    file(GLOB_RECURSE S_FILES_APP_SYSTEM_SERVICES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/objc/*.mm")

    # header files
    nativium_add_header_files("${H_FILES_APP_SYSTEM_SERVICES}")

    # source files
    nativium_add_source_files("${S_FILES_APP_SYSTEM_SERVICES}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/objc")
endif()
