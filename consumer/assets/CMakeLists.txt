
cmake_minimum_required(VERSION 2.8.12)
project (hello2)

# This fills in the CMake variables with our dependencies.
# It also sets the right build flags for our compiler etc
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

# Building the actual application
add_executable(main main.cpp)
target_link_libraries(main ${CONAN_LIBS})