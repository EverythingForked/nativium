# module files
file(GLOB H_FILES "${PROJECT_MODULES_PATH}/string-helper/gluecode/generated-src/cpp/nativium/helper/StringHelper*.hpp")
file(GLOB H_FILES_IMPL "${PROJECT_MODULES_PATH}/string-helper/implementation/cpp/nativium/helper/StringHelper*.hpp")

file(GLOB S_FILES "${PROJECT_MODULES_PATH}/string-helper/gluecode/generated-src/cpp/nativium/helper/StringHelper*.cpp")
file(GLOB S_FILES_IMPL "${PROJECT_MODULES_PATH}/string-helper/implementation/cpp/nativium/helper/StringHelper*.cpp")

# project files
project_add_header_files("${H_FILES}")
project_add_header_files("${H_FILES_IMPL}")

project_add_source_files("${S_FILES}")
project_add_source_files("${S_FILES_IMPL}")

# search paths
project_add_search_path("${PROJECT_MODULES_PATH}/string-helper/gluecode/generated-src/cpp")
project_add_search_path("${PROJECT_MODULES_PATH}/string-helper/implementation/cpp")