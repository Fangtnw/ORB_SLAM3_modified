file(READ "${CMAKE_CURRENT_LIST_DIR}/usage" usage)
message(WARNING "find_package(libffi) is deprecated.\n${usage}")
include(CMakeFindDependencyMacro)
find_dependency(unofficial-libffi CONFIG REQUIRED)
if(NOT TARGET libffi)
    add_library(libffi ALIAS unofficial::libffi::libffi)
endif()
