cmake_minimum_required(VERSION 3.30...4.0)

project(incsfntly)
set(CMAKE_CXX_SCAN_FOR_MODULES OFF)

if(CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
  add_compile_options(/utf-8)
  add_compile_definitions(NOMINMAX)
endif()

########################################################
### Target specification ###
########################################################
add_library(incsfntly src/incsfntly.cpp)
add_library(incsfntly::incsfntly ALIAS incsfntly)
target_compile_features(incsfntly PUBLIC cxx_std_23)

target_sources(incsfntly
    PUBLIC
        FILE_SET pub_headers
        TYPE HEADERS
        BASE_DIRS
                incl)

include(CMake_dependencies.cmake) ### Loads and declares the required external libraries using CMake's FetchContent.
target_link_libraries(incsfntly PUBLIC sfntly)