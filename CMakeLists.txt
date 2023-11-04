cmake_minimum_required(VERSION 3.0.0)
project(cudasamples VERSION 0.1.0)

# compiler options, set c++11 (requires cmake 3.2 or higher)
cmake_minimum_required(VERSION 3.2)
set(CMAKE_CXX_STANDARD 11) 

# FIND LIBRARIES
find_package(OpenCV REQUIRED)
find_package(CUDA REQUIRED)
find_package(Eigen3 REQUIRED CONFIG)
find_package(Iconv REQUIRED)

# INCLUDE HEADERS
include_directories(${OpenCV_INCLUDE_DIRS})

# find source and header files.
set(main "main.cu")

# COMPILER FLAGS AND DEFINITIONS
set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS})
set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS};-std=c++11)

# SPECIFY TARGETS

cuda_add_executable(main ${main})

target_link_libraries(main ${OpenCV_LIBS})