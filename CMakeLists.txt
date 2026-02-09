cmake_minimum_required(VERSION 4.1)
project(breadsay VERSION 0.1.0 LANGUAGES CXX)

# Set C++ standard
set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Include directories
include_directories(${CMAKE_SOURCE_DIR}/include)

# Source files
set(SOURCES
        src/main.cc
)

# Create executable
add_executable(breadsay ${SOURCES})

# Installation
install(TARGETS breadsay DESTINATION bin)