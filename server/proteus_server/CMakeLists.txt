cmake_minimum_required(VERSION 3.5)

project(proteus_server LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(proteus_server main.cpp tcpserver.cpp)

