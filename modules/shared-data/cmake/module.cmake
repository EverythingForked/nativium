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
