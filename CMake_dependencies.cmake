include(cmake/CPM.cmake)

# set(sfntly_BUILD_EXECUTABLES ON CACHE INTERNAL "")
CPMAddPackage(
    URI "gh:InCom-0/sfntly#main"
    SOURCE_SUBDIR cpp
)