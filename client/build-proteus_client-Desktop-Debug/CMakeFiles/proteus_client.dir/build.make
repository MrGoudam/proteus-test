# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/work/Рабочий стол/Proteus/client/proteus_client"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/work/Рабочий стол/Proteus/client/build-proteus_client-Desktop-Debug"

# Include any dependencies generated for this target.
include CMakeFiles/proteus_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/proteus_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/proteus_client.dir/flags.make

CMakeFiles/proteus_client.dir/main.cpp.o: CMakeFiles/proteus_client.dir/flags.make
CMakeFiles/proteus_client.dir/main.cpp.o: /home/work/Рабочий\ стол/Proteus/client/proteus_client/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/work/Рабочий стол/Proteus/client/build-proteus_client-Desktop-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/proteus_client.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/proteus_client.dir/main.cpp.o -c "/home/work/Рабочий стол/Proteus/client/proteus_client/main.cpp"

CMakeFiles/proteus_client.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proteus_client.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/work/Рабочий стол/Proteus/client/proteus_client/main.cpp" > CMakeFiles/proteus_client.dir/main.cpp.i

CMakeFiles/proteus_client.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proteus_client.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/work/Рабочий стол/Proteus/client/proteus_client/main.cpp" -o CMakeFiles/proteus_client.dir/main.cpp.s

CMakeFiles/proteus_client.dir/tcpsocket.cpp.o: CMakeFiles/proteus_client.dir/flags.make
CMakeFiles/proteus_client.dir/tcpsocket.cpp.o: /home/work/Рабочий\ стол/Proteus/client/proteus_client/tcpsocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/work/Рабочий стол/Proteus/client/build-proteus_client-Desktop-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/proteus_client.dir/tcpsocket.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/proteus_client.dir/tcpsocket.cpp.o -c "/home/work/Рабочий стол/Proteus/client/proteus_client/tcpsocket.cpp"

CMakeFiles/proteus_client.dir/tcpsocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proteus_client.dir/tcpsocket.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/work/Рабочий стол/Proteus/client/proteus_client/tcpsocket.cpp" > CMakeFiles/proteus_client.dir/tcpsocket.cpp.i

CMakeFiles/proteus_client.dir/tcpsocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proteus_client.dir/tcpsocket.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/work/Рабочий стол/Proteus/client/proteus_client/tcpsocket.cpp" -o CMakeFiles/proteus_client.dir/tcpsocket.cpp.s

# Object files for target proteus_client
proteus_client_OBJECTS = \
"CMakeFiles/proteus_client.dir/main.cpp.o" \
"CMakeFiles/proteus_client.dir/tcpsocket.cpp.o"

# External object files for target proteus_client
proteus_client_EXTERNAL_OBJECTS =

proteus_client: CMakeFiles/proteus_client.dir/main.cpp.o
proteus_client: CMakeFiles/proteus_client.dir/tcpsocket.cpp.o
proteus_client: CMakeFiles/proteus_client.dir/build.make
proteus_client: CMakeFiles/proteus_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/work/Рабочий стол/Proteus/client/build-proteus_client-Desktop-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable proteus_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/proteus_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/proteus_client.dir/build: proteus_client

.PHONY : CMakeFiles/proteus_client.dir/build

CMakeFiles/proteus_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/proteus_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/proteus_client.dir/clean

CMakeFiles/proteus_client.dir/depend:
	cd "/home/work/Рабочий стол/Proteus/client/build-proteus_client-Desktop-Debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/work/Рабочий стол/Proteus/client/proteus_client" "/home/work/Рабочий стол/Proteus/client/proteus_client" "/home/work/Рабочий стол/Proteus/client/build-proteus_client-Desktop-Debug" "/home/work/Рабочий стол/Proteus/client/build-proteus_client-Desktop-Debug" "/home/work/Рабочий стол/Proteus/client/build-proteus_client-Desktop-Debug/CMakeFiles/proteus_client.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/proteus_client.dir/depend

