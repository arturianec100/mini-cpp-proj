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
CMAKE_SOURCE_DIR = /home/art/Projects/mini-cpp-proj/armstrong_number

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/art/Projects/mini-cpp-proj/armstrong_number/build

# Include any dependencies generated for this target.
include CMakeFiles/armstrong_number.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/armstrong_number.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/armstrong_number.dir/flags.make

CMakeFiles/armstrong_number.dir/main.cpp.o: CMakeFiles/armstrong_number.dir/flags.make
CMakeFiles/armstrong_number.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/art/Projects/mini-cpp-proj/armstrong_number/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/armstrong_number.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/armstrong_number.dir/main.cpp.o -c /home/art/Projects/mini-cpp-proj/armstrong_number/main.cpp

CMakeFiles/armstrong_number.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/armstrong_number.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/art/Projects/mini-cpp-proj/armstrong_number/main.cpp > CMakeFiles/armstrong_number.dir/main.cpp.i

CMakeFiles/armstrong_number.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/armstrong_number.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/art/Projects/mini-cpp-proj/armstrong_number/main.cpp -o CMakeFiles/armstrong_number.dir/main.cpp.s

# Object files for target armstrong_number
armstrong_number_OBJECTS = \
"CMakeFiles/armstrong_number.dir/main.cpp.o"

# External object files for target armstrong_number
armstrong_number_EXTERNAL_OBJECTS =

armstrong_number: CMakeFiles/armstrong_number.dir/main.cpp.o
armstrong_number: CMakeFiles/armstrong_number.dir/build.make
armstrong_number: CMakeFiles/armstrong_number.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/art/Projects/mini-cpp-proj/armstrong_number/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable armstrong_number"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/armstrong_number.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/armstrong_number.dir/build: armstrong_number

.PHONY : CMakeFiles/armstrong_number.dir/build

CMakeFiles/armstrong_number.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/armstrong_number.dir/cmake_clean.cmake
.PHONY : CMakeFiles/armstrong_number.dir/clean

CMakeFiles/armstrong_number.dir/depend:
	cd /home/art/Projects/mini-cpp-proj/armstrong_number/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/art/Projects/mini-cpp-proj/armstrong_number /home/art/Projects/mini-cpp-proj/armstrong_number /home/art/Projects/mini-cpp-proj/armstrong_number/build /home/art/Projects/mini-cpp-proj/armstrong_number/build /home/art/Projects/mini-cpp-proj/armstrong_number/build/CMakeFiles/armstrong_number.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/armstrong_number.dir/depend

