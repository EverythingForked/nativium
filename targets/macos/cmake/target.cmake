# conan
include(${NATIVIUM_BUILD_PATH}/conan/conanbuildinfo.cmake)
conan_basic_setup()

# source
include(${NATIVIUM_TARGETS_PATH}/${NATIVIUM_TARGET}/cmake/source.cmake)

# framework links
set(NATIVIUM_FRAMEWORK_LINKS
    ${NATIVIUM_FRAMEWORK_LINKS} "-framework Foundation"
    CACHE INTERNAL ""
)

# cxx flags
set(NATIVIUM_CXX_FLAGS
    "${NATIVIUM_CXX_FLAGS} -stdlib=libc++"
    CACHE INTERNAL ""
)

# flags
set(CMAKE_C_FLAGS
    "${CMAKE_C_FLAGS} ${NATIVIUM_C_FLAGS}"
    CACHE INTERNAL ""
)

set(CMAKE_CXX_FLAGS
    "${CMAKE_CXX_FLAGS} ${NATIVIUM_CXX_FLAGS}"
    CACHE INTERNAL ""
)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_DEBUG} -O0 -g")
set(CMAKE_CXX_FLAGS_MINSIZEREL "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_MINSIZEREL} -Os")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -O2 -g")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_RELEASE} -O3")

# project
include_directories(${NATIVIUM_HEADER_SEARCH_PATHS})
link_directories(${NATIVIUM_LIBRARY_SEARCH_PATHS})

add_executable(${NATIVIUM_PROJECT_NAME} ${NATIVIUM_SOURCE_FILES_MERGED})

target_link_libraries(${NATIVIUM_PROJECT_NAME} "${NATIVIUM_LIBRARY_LINKS}")
target_link_libraries(${NATIVIUM_PROJECT_NAME} "${NATIVIUM_FRAMEWORK_LINKS}")
target_link_libraries(${NATIVIUM_PROJECT_NAME} "${CONAN_LIBS}")

set_target_properties(
    ${NATIVIUM_PROJECT_NAME}
    PROPERTIES CXX_STANDARD "${NATIVIUM_CXX_STANDARD}"
               CXX_STANDARD_REQUIRED YES
               CXX_EXTENSIONS NO
               PUBLIC_HEADER "${NATIVIUM_HEADER_FILES}"
               XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "${CODE_SIGN_IDENTITY}"
               XCODE_ATTRIBUTE_DEVELOPMENT_TEAM "${DEVELOPMENT_TEAM_ID}"
               XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH YES
               XCODE_ATTRIBUTE_SKIP_INSTALL YES
               MACOSX_DEPLOYMENT_TARGET "${CMAKE_OSX_DEPLOYMENT_TARGET}"
)

target_compile_options(${NATIVIUM_PROJECT_NAME} PUBLIC "${NATIVIUM_COMPILE_OPTIONS}")

target_compile_definitions(${NATIVIUM_PROJECT_NAME} PRIVATE NATIVIUM_VERSION="${NATIVIUM_VERSION}" HAS_UNCAUGHT_EXCEPTIONS=0)
