cmake_minimum_required(VERSION 3.5)

project(proteus_unit-test LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(proteus_unit-test main.cpp tcpsocket.cpp)
