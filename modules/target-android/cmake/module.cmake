if(NATIVIUM_TARGET STREQUAL "android")
    # module files
    file(GLOB H_FILES_CXX "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/main-ext/*.hpp")
    file(GLOB S_FILES_CXX "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/main-ext/*.cpp")

    file(GLOB H_FILES_SUPPORT "${NATIVIUM_MODULES_PATH}/support-lib/djinni/*.hpp")
    file(GLOB S_FILES_SUPPORT "${NATIVIUM_MODULES_PATH}/support-lib/djinni/*.cpp")

    file(GLOB H_FILES_SUPPORT_PLATFORM "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/*.hpp")
    file(GLOB S_FILES_SUPPORT_PLATFORM "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_APP_DOMAIN "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_APP_DOMAIN "${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_APP_ENUMS "${NATIVIUM_MODULES_PATH}/app-enumerator/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_APP_ENUMS "${NATIVIUM_MODULES_PATH}/app-enumerator/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_APP_CORE "${NATIVIUM_MODULES_PATH}/app-core/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_APP_CORE "${NATIVIUM_MODULES_PATH}/app-core/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_APP_DATA_SERVICES "${NATIVIUM_MODULES_PATH}/app-repository/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_APP_DATA_SERVICES "${NATIVIUM_MODULES_PATH}/app-repository/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_APP_SYSTEM_SERVICES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_APP_SYSTEM_SERVICES "${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_APP_HELPERS "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_APP_HELPERS "${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_LOGGER "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_LOGGER "${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_HTTP_CLIENT "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_HTTP_CLIENT "${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_HTTP_SERVER "${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_HTTP_SERVER "${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_FILE_HELPER "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_FILE_HELPER "${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_SHARED_DATA "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_SHARED_DATA "${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/jni/*.cpp")

    file(GLOB_RECURSE H_FILES_DATETIME "${NATIVIUM_MODULES_PATH}/datetime/gluecode/generated-src/jni/*.hpp")
    file(GLOB_RECURSE S_FILES_DATETIME "${NATIVIUM_MODULES_PATH}/datetime/gluecode/generated-src/jni/*.cpp")

    if(NATIVIUM_USE_CXX_HTTP_CLIENT)
        file(GLOB H_FILES_HTTP_CLIENT_CXX "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.hpp")
        file(GLOB S_FILES_HTTP_CLIENT_CXX "${NATIVIUM_MODULES_PATH}/http-client/implementation/cpp/nativium/net/http/Simple*.cpp")
    endif()

    # header files
    nativium_add_header_files("${H_FILES_CXX}")

    nativium_add_header_files("${H_FILES_SUPPORT}")
    nativium_add_header_files("${H_FILES_SUPPORT_PLATFORM}")

    nativium_add_header_files("${H_FILES_APP_DOMAIN}")
    nativium_add_header_files("${H_FILES_APP_ENUMS}")
    nativium_add_header_files("${H_FILES_APP_CORE}")
    nativium_add_header_files("${H_FILES_APP_DATA_SERVICES}")
    nativium_add_header_files("${H_FILES_APP_SYSTEM_SERVICES}")
    nativium_add_header_files("${H_FILES_APP_HELPERS}")

    nativium_add_header_files("${H_FILES_LOGGER}")
    nativium_add_header_files("${H_FILES_HTTP_CLIENT}")
    nativium_add_header_files("${H_FILES_HTTP_SERVER}")
    nativium_add_header_files("${H_FILES_FILE_HELPER}")
    nativium_add_header_files("${H_FILES_SHARED_DATA}")
    nativium_add_header_files("${H_FILES_DATETIME}")

    # source files
    nativium_add_source_files("${S_FILES_CXX}")

    nativium_add_source_files("${S_FILES_SUPPORT}")
    nativium_add_source_files("${S_FILES_SUPPORT_PLATFORM}")

    nativium_add_source_files("${S_FILES_APP_DOMAIN}")
    nativium_add_source_files("${S_FILES_APP_ENUMS}")
    nativium_add_source_files("${S_FILES_APP_CORE}")
    nativium_add_source_files("${S_FILES_APP_DATA_SERVICES}")
    nativium_add_source_files("${S_FILES_APP_SYSTEM_SERVICES}")
    nativium_add_source_files("${S_FILES_APP_HELPERS}")

    nativium_add_source_files("${S_FILES_LOGGER}")
    nativium_add_source_files("${S_FILES_HTTP_CLIENT}")
    nativium_add_source_files("${S_FILES_HTTP_SERVER}")
    nativium_add_source_files("${S_FILES_FILE_HELPER}")
    nativium_add_source_files("${S_FILES_SHARED_DATA}")
    nativium_add_source_files("${S_FILES_DATETIME}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/support-lib")

    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-domain/gluecode/generated-src/jni")
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-enumerator/gluecode/generated-src/jni")
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-core/gluecode/generated-src/jni")
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-repository/gluecode/generated-src/jni")
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-system-service/gluecode/generated-src/jni")
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/app-helper/gluecode/generated-src/jni")

    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/logger/gluecode/generated-src/jni")
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-client/gluecode/generated-src/jni")
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/http-server/gluecode/generated-src/jni")
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/file-helper/gluecode/generated-src/jni")
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/shared-data/gluecode/generated-src/jni")
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/datetime/gluecode/generated-src/jni")
endif()
