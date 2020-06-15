cmake_minimum_required(VERSION 3.1)

project(armstrong_number)

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
link_libraries(Threads::Threads)

#get_filename_component(PARENT_DIR $CMAKE_SOURCE_DIR DIRECTORY)
#include_directories($PARENT_DIR/include)

#include_directories(${CMAKE_SOURCE_DIR}/include)

#message(STATUS "parent_dir=${PARENT_DIR}")

add_executable(armstrong_number main.cpp)

#install(TARGETS armstrong_number RUNTIME DESTINATION bin)
