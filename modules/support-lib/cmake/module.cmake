# platform data
if(NATIVIUM_TARGET STREQUAL "android")
    # module files
    file(GLOB H_FILES_CXX "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/main-ext/*.hpp")
    file(GLOB S_FILES_CXX "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/main-ext/*.cpp")

    file(GLOB H_FILES_SUPPORT "${NATIVIUM_MODULES_PATH}/support-lib/djinni/*.hpp")
    file(GLOB S_FILES_SUPPORT "${NATIVIUM_MODULES_PATH}/support-lib/djinni/*.cpp")

    file(GLOB H_FILES_SUPPORT_PLATFORM "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/*.hpp")
    file(GLOB S_FILES_SUPPORT_PLATFORM "${NATIVIUM_MODULES_PATH}/support-lib/djinni/jni/*.cpp")

    # header files
    nativium_add_header_files("${H_FILES_CXX}")

    nativium_add_header_files("${H_FILES_SUPPORT}")
    nativium_add_header_files("${H_FILES_SUPPORT_PLATFORM}")

    # source files
    nativium_add_source_files("${S_FILES_CXX}")

    nativium_add_source_files("${S_FILES_SUPPORT}")
    nativium_add_source_files("${S_FILES_SUPPORT_PLATFORM}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/support-lib")
elseif(NATIVIUM_TARGET STREQUAL "ios")
    # module files
    file(GLOB H_FILES_SUPPORT "${NATIVIUM_MODULES_PATH}/support-lib/djinni/*.hpp")
    file(GLOB S_FILES_SUPPORT "${NATIVIUM_MODULES_PATH}/support-lib/djinni/*.cpp")

    file(GLOB H_FILES_SUPPORT_PLATFORM "${NATIVIUM_MODULES_PATH}/support-lib/djinni/objc/*.h")
    file(GLOB S_FILES_SUPPORT_PLATFORM "${NATIVIUM_MODULES_PATH}/support-lib/djinni/objc/*.mm")

    # header files
    nativium_add_header_files("${H_FILES_SUPPORT}")
    nativium_add_header_files("${H_FILES_SUPPORT_PLATFORM}")

    # source files
    nativium_add_source_files("${S_FILES_SUPPORT}")
    nativium_add_source_files("${S_FILES_SUPPORT_PLATFORM}")

    # search paths
    nativium_add_search_path("${NATIVIUM_MODULES_PATH}/support-lib")
endif()
