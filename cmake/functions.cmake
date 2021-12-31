# add module
macro(nativium_add_module name)
    message(STATUS "Nativium: Adding module ${name}")
    include(${NATIVIUM_MODULES_PATH}/${name}/cmake/module.cmake)
endmacro()

# add all modules
macro(nativium_add_modules)
    message(STATUS "Nativium: Adding modules...")

    nativium_list_subdirs(modules ${NATIVIUM_MODULES_PATH} TRUE)

    foreach(module ${modules})
        if(EXISTS "${NATIVIUM_MODULES_PATH}/${module}/cmake/module.cmake")
            nativium_add_module(${module})
        endif()
    endforeach()

    message(STATUS "Nativium: Modules added")
endmacro()

# add target
macro(nativium_add_target name)
    message(STATUS "Nativium: Adding target ${name}")
    include(${NATIVIUM_TARGETS_PATH}/${name}/cmake/target.cmake)
endmacro()

# add all targets
macro(nativium_add_targets)
    message(STATUS "Nativium: Adding targets...")

    nativium_list_subdirs(targets ${NATIVIUM_TARGETS_PATH} TRUE)

    foreach(target ${targets})
        if(EXISTS "${NATIVIUM_TARGETS_PATH}/${target}/cmake/target.cmake")
            nativium_add_target(${target})
        endif()
    endforeach()

    message(STATUS "Nativium: Targets added")
endmacro()

# list all subdirs
macro(nativium_list_subdirs retval curdir return_relative)
    file(
        GLOB sub-dir
        RELATIVE ${curdir}
        ${curdir}/*
    )

    set(${retval} "")

    foreach(dir ${sub-dir})
        if(IS_DIRECTORY ${curdir}/${dir})
            if(${return_relative})
                list(APPEND ${retval} ${dir})
            else()
                list(APPEND ${retval} ${curdir}/${dir})
            endif()
        endif()
    endforeach()
endmacro()

# project add search path
macro(nativium_add_search_path new_path)
    list(APPEND NATIVIUM_HEADER_SEARCH_PATHS ${new_path})
endmacro()

# project add header files
macro(nativium_add_header_files new_file_list)
    list(APPEND NATIVIUM_HEADER_FILES ${new_file_list})
endmacro()

# project add source files
macro(nativium_add_source_files new_file_list)
    list(APPEND NATIVIUM_SOURCE_FILES ${new_file_list})
endmacro()
