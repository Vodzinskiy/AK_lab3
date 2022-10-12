cmake_minimum_required(VERSION 2.8)

project(Lab3)

set(SOURCE_EXE main.cpp)

set(SOURCE_LIB function.cpp)

add_library(function STATIC ${SOURCE_LIB})

add_executable(main ${SOURCE_EXE})

target_link_libraries(main function)
