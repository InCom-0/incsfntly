cmake_minimum_required(VERSION 3.30...4.0)

project(incsfntly)
set(CMAKE_CXX_SCAN_FOR_MODULES OFF)

if(CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
  add_compile_options(/utf-8)
endif()

########################################################
### Target specification ###
########################################################
add_library(incsfntly src/main.cpp)
target_compile_features(incsfntly PUBLIC cxx_std_23)

include(CMake_dependencies.cmake) ### Loads and declares the required external libraries using CMake's FetchContent.
target_link_libraries(incsfntly PUBLIC sfntly)