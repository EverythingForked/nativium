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
