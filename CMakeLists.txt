cmake_minimum_required(VERSION 3.0.0)
project(TEST VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

find_package(OpenCV REQUIRED)
find_package(CUDA REQUIRED)
find_package(Eigen3 REQUIRED CONFIG)
find_package(Iconv REQUIRED)

include_directories( ${OpenCV_INCLUDE_DIRS} )

add_executable(TEST main.cpp)
target_link_libraries( TEST ${OpenCV_LIBS} )

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
