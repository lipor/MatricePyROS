# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/nvidia/Onboard-SDK-3.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/Onboard-SDK-3.2/build

# Include any dependencies generated for this target.
include sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/depend.make

# Include the progress variables for this target.
include sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/progress.make

# Include the compile flags for this target's objects.
include sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/flags.make

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/flags.make
sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o: ../sample/Linux/Non-Blocking/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/Onboard-SDK-3.2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o"
	cd /home/nvidia/Onboard-SDK-3.2/build/sample/Linux/Non-Blocking && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o -c /home/nvidia/Onboard-SDK-3.2/sample/Linux/Non-Blocking/src/main.cpp

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.i"
	cd /home/nvidia/Onboard-SDK-3.2/build/sample/Linux/Non-Blocking && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/Onboard-SDK-3.2/sample/Linux/Non-Blocking/src/main.cpp > CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.i

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.s"
	cd /home/nvidia/Onboard-SDK-3.2/build/sample/Linux/Non-Blocking && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/Onboard-SDK-3.2/sample/Linux/Non-Blocking/src/main.cpp -o CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.s

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o.requires:

.PHONY : sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o.requires

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o.provides: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o.requires
	$(MAKE) -f sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/build.make sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o.provides.build
.PHONY : sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o.provides

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o.provides.build: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o


sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/flags.make
sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o: ../sample/Linux/Non-Blocking/src/LinuxInteractiveNonBlocking.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/Onboard-SDK-3.2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o"
	cd /home/nvidia/Onboard-SDK-3.2/build/sample/Linux/Non-Blocking && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o -c /home/nvidia/Onboard-SDK-3.2/sample/Linux/Non-Blocking/src/LinuxInteractiveNonBlocking.cpp

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.i"
	cd /home/nvidia/Onboard-SDK-3.2/build/sample/Linux/Non-Blocking && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/Onboard-SDK-3.2/sample/Linux/Non-Blocking/src/LinuxInteractiveNonBlocking.cpp > CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.i

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.s"
	cd /home/nvidia/Onboard-SDK-3.2/build/sample/Linux/Non-Blocking && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/Onboard-SDK-3.2/sample/Linux/Non-Blocking/src/LinuxInteractiveNonBlocking.cpp -o CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.s

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o.requires:

.PHONY : sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o.requires

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o.provides: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o.requires
	$(MAKE) -f sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/build.make sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o.provides.build
.PHONY : sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o.provides

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o.provides.build: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o


# Object files for target djiosdk-linux-sample-nonblock
djiosdk__linux__sample__nonblock_OBJECTS = \
"CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o" \
"CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o"

# External object files for target djiosdk-linux-sample-nonblock
djiosdk__linux__sample__nonblock_EXTERNAL_OBJECTS =

bin/djiosdk-linux-sample-nonblock: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o
bin/djiosdk-linux-sample-nonblock: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o
bin/djiosdk-linux-sample-nonblock: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/build.make
bin/djiosdk-linux-sample-nonblock: libs/libdjiosdk-core.a
bin/djiosdk-linux-sample-nonblock: libs/libdjiosdk-platform.a
bin/djiosdk-linux-sample-nonblock: libs/libdjiosdk-wrapper.a
bin/djiosdk-linux-sample-nonblock: libs/libdjiosdk-platform.a
bin/djiosdk-linux-sample-nonblock: libs/libdjiosdk-core.a
bin/djiosdk-linux-sample-nonblock: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/Onboard-SDK-3.2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/djiosdk-linux-sample-nonblock"
	cd /home/nvidia/Onboard-SDK-3.2/build/sample/Linux/Non-Blocking && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/djiosdk-linux-sample-nonblock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/build: bin/djiosdk-linux-sample-nonblock

.PHONY : sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/build

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/requires: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/main.cpp.o.requires
sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/requires: sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/src/LinuxInteractiveNonBlocking.cpp.o.requires

.PHONY : sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/requires

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/clean:
	cd /home/nvidia/Onboard-SDK-3.2/build/sample/Linux/Non-Blocking && $(CMAKE_COMMAND) -P CMakeFiles/djiosdk-linux-sample-nonblock.dir/cmake_clean.cmake
.PHONY : sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/clean

sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/depend:
	cd /home/nvidia/Onboard-SDK-3.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/Onboard-SDK-3.2 /home/nvidia/Onboard-SDK-3.2/sample/Linux/Non-Blocking /home/nvidia/Onboard-SDK-3.2/build /home/nvidia/Onboard-SDK-3.2/build/sample/Linux/Non-Blocking /home/nvidia/Onboard-SDK-3.2/build/sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sample/Linux/Non-Blocking/CMakeFiles/djiosdk-linux-sample-nonblock.dir/depend

