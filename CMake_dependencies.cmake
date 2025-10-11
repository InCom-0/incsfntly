include(cmake/CPM.cmake)

set(sfntly_BUILD_EXECUTABLES OFF CACHE INTERNAL "")
CPMAddPackage(
    URI "gh:InCom-0/sfntly#cmake_upgrade"
    SOURCE_SUBDIR cpp
)