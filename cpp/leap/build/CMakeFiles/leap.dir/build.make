# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.7.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.7.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ayyash/exercism/cpp/leap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ayyash/exercism/cpp/leap/build

# Include any dependencies generated for this target.
include CMakeFiles/leap.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/leap.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/leap.dir/flags.make

CMakeFiles/leap.dir/leap_test.cpp.o: CMakeFiles/leap.dir/flags.make
CMakeFiles/leap.dir/leap_test.cpp.o: ../leap_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ayyash/exercism/cpp/leap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/leap.dir/leap_test.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/leap.dir/leap_test.cpp.o -c /Users/ayyash/exercism/cpp/leap/leap_test.cpp

CMakeFiles/leap.dir/leap_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/leap.dir/leap_test.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ayyash/exercism/cpp/leap/leap_test.cpp > CMakeFiles/leap.dir/leap_test.cpp.i

CMakeFiles/leap.dir/leap_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/leap.dir/leap_test.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ayyash/exercism/cpp/leap/leap_test.cpp -o CMakeFiles/leap.dir/leap_test.cpp.s

CMakeFiles/leap.dir/leap_test.cpp.o.requires:

.PHONY : CMakeFiles/leap.dir/leap_test.cpp.o.requires

CMakeFiles/leap.dir/leap_test.cpp.o.provides: CMakeFiles/leap.dir/leap_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/leap.dir/build.make CMakeFiles/leap.dir/leap_test.cpp.o.provides.build
.PHONY : CMakeFiles/leap.dir/leap_test.cpp.o.provides

CMakeFiles/leap.dir/leap_test.cpp.o.provides.build: CMakeFiles/leap.dir/leap_test.cpp.o


CMakeFiles/leap.dir/leap.cpp.o: CMakeFiles/leap.dir/flags.make
CMakeFiles/leap.dir/leap.cpp.o: ../leap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ayyash/exercism/cpp/leap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/leap.dir/leap.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/leap.dir/leap.cpp.o -c /Users/ayyash/exercism/cpp/leap/leap.cpp

CMakeFiles/leap.dir/leap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/leap.dir/leap.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ayyash/exercism/cpp/leap/leap.cpp > CMakeFiles/leap.dir/leap.cpp.i

CMakeFiles/leap.dir/leap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/leap.dir/leap.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ayyash/exercism/cpp/leap/leap.cpp -o CMakeFiles/leap.dir/leap.cpp.s

CMakeFiles/leap.dir/leap.cpp.o.requires:

.PHONY : CMakeFiles/leap.dir/leap.cpp.o.requires

CMakeFiles/leap.dir/leap.cpp.o.provides: CMakeFiles/leap.dir/leap.cpp.o.requires
	$(MAKE) -f CMakeFiles/leap.dir/build.make CMakeFiles/leap.dir/leap.cpp.o.provides.build
.PHONY : CMakeFiles/leap.dir/leap.cpp.o.provides

CMakeFiles/leap.dir/leap.cpp.o.provides.build: CMakeFiles/leap.dir/leap.cpp.o


# Object files for target leap
leap_OBJECTS = \
"CMakeFiles/leap.dir/leap_test.cpp.o" \
"CMakeFiles/leap.dir/leap.cpp.o"

# External object files for target leap
leap_EXTERNAL_OBJECTS =

leap: CMakeFiles/leap.dir/leap_test.cpp.o
leap: CMakeFiles/leap.dir/leap.cpp.o
leap: CMakeFiles/leap.dir/build.make
leap: /usr/local/boost_1_63_0/stage/lib/libboost_unit_test_framework.a
leap: /usr/local/boost_1_63_0/stage/lib/libboost_date_time.a
leap: /usr/local/boost_1_63_0/stage/lib/libboost_regex.a
leap: CMakeFiles/leap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ayyash/exercism/cpp/leap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable leap"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/leap.dir/link.txt --verbose=$(VERBOSE)
	./leap

# Rule to build all files generated by this target.
CMakeFiles/leap.dir/build: leap

.PHONY : CMakeFiles/leap.dir/build

CMakeFiles/leap.dir/requires: CMakeFiles/leap.dir/leap_test.cpp.o.requires
CMakeFiles/leap.dir/requires: CMakeFiles/leap.dir/leap.cpp.o.requires

.PHONY : CMakeFiles/leap.dir/requires

CMakeFiles/leap.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/leap.dir/cmake_clean.cmake
.PHONY : CMakeFiles/leap.dir/clean

CMakeFiles/leap.dir/depend:
	cd /Users/ayyash/exercism/cpp/leap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ayyash/exercism/cpp/leap /Users/ayyash/exercism/cpp/leap /Users/ayyash/exercism/cpp/leap/build /Users/ayyash/exercism/cpp/leap/build /Users/ayyash/exercism/cpp/leap/build/CMakeFiles/leap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/leap.dir/depend

