# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\lenovo\CLionProjects\dstree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\lenovo\CLionProjects\dstree\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/dstree.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dstree.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dstree.dir/flags.make

CMakeFiles/dstree.dir/src/dstree.c.obj: CMakeFiles/dstree.dir/flags.make
CMakeFiles/dstree.dir/src/dstree.c.obj: ../src/dstree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\lenovo\CLionProjects\dstree\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/dstree.dir/src/dstree.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\dstree.dir\src\dstree.c.obj   -c C:\Users\lenovo\CLionProjects\dstree\src\dstree.c

CMakeFiles/dstree.dir/src/dstree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dstree.dir/src/dstree.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\lenovo\CLionProjects\dstree\src\dstree.c > CMakeFiles\dstree.dir\src\dstree.c.i

CMakeFiles/dstree.dir/src/dstree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dstree.dir/src/dstree.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\lenovo\CLionProjects\dstree\src\dstree.c -o CMakeFiles\dstree.dir\src\dstree.c.s

# Object files for target dstree
dstree_OBJECTS = \
"CMakeFiles/dstree.dir/src/dstree.c.obj"

# External object files for target dstree
dstree_EXTERNAL_OBJECTS =

dstree.exe: CMakeFiles/dstree.dir/src/dstree.c.obj
dstree.exe: CMakeFiles/dstree.dir/build.make
dstree.exe: liblibdstree.a
dstree.exe: CMakeFiles/dstree.dir/linklibs.rsp
dstree.exe: CMakeFiles/dstree.dir/objects1.rsp
dstree.exe: CMakeFiles/dstree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\lenovo\CLionProjects\dstree\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable dstree.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\dstree.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dstree.dir/build: dstree.exe

.PHONY : CMakeFiles/dstree.dir/build

CMakeFiles/dstree.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\dstree.dir\cmake_clean.cmake
.PHONY : CMakeFiles/dstree.dir/clean

CMakeFiles/dstree.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\lenovo\CLionProjects\dstree C:\Users\lenovo\CLionProjects\dstree C:\Users\lenovo\CLionProjects\dstree\cmake-build-debug C:\Users\lenovo\CLionProjects\dstree\cmake-build-debug C:\Users\lenovo\CLionProjects\dstree\cmake-build-debug\CMakeFiles\dstree.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dstree.dir/depend
