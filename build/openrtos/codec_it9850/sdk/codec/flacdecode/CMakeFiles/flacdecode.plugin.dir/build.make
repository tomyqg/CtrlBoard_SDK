# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_COMMAND = D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/tool/bin/cmake.exe

# The command to remove a file.
RM = D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/tool/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850

# Include any dependencies generated for this target.
include sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/depend.make

# Include the progress variables for this target.
include sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/progress.make

# Include the compile flags for this target's objects.
include sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flags.make

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flags.make
sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj: ../../../sdk/codec/flacdecode/crc.c
	$(CMAKE_COMMAND) -E cmake_progress_report D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/flacdecode.plugin.dir/crc.c.obj   -c D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/crc.c

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/flacdecode.plugin.dir/crc.c.i"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/crc.c > CMakeFiles/flacdecode.plugin.dir/crc.c.i

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/flacdecode.plugin.dir/crc.c.s"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/crc.c -o CMakeFiles/flacdecode.plugin.dir/crc.c.s

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj.requires:
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj.requires

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj.provides: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj.requires
	$(MAKE) -f sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/build.make sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj.provides.build
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj.provides

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj.provides.build: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flags.make
sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj: ../../../sdk/codec/flacdecode/flac.c
	$(CMAKE_COMMAND) -E cmake_progress_report D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/flacdecode.plugin.dir/flac.c.obj   -c D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/flac.c

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/flacdecode.plugin.dir/flac.c.i"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/flac.c > CMakeFiles/flacdecode.plugin.dir/flac.c.i

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/flacdecode.plugin.dir/flac.c.s"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/flac.c -o CMakeFiles/flacdecode.plugin.dir/flac.c.s

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj.requires:
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj.requires

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj.provides: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj.requires
	$(MAKE) -f sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/build.make sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj.provides.build
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj.provides

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj.provides.build: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flags.make
sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj: ../../../sdk/codec/flacdecode/flacdata.c
	$(CMAKE_COMMAND) -E cmake_progress_report D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj   -c D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/flacdata.c

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/flacdecode.plugin.dir/flacdata.c.i"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/flacdata.c > CMakeFiles/flacdecode.plugin.dir/flacdata.c.i

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/flacdecode.plugin.dir/flacdata.c.s"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/flacdata.c -o CMakeFiles/flacdecode.plugin.dir/flacdata.c.s

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj.requires:
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj.requires

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj.provides: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj.requires
	$(MAKE) -f sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/build.make sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj.provides.build
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj.provides

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj.provides.build: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flags.make
sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj: ../../../sdk/codec/flacdecode/flacdec.c
	$(CMAKE_COMMAND) -E cmake_progress_report D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj   -c D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/flacdec.c

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/flacdecode.plugin.dir/flacdec.c.i"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/flacdec.c > CMakeFiles/flacdecode.plugin.dir/flacdec.c.i

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/flacdecode.plugin.dir/flacdec.c.s"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/flacdec.c -o CMakeFiles/flacdecode.plugin.dir/flacdec.c.s

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj.requires:
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj.requires

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj.provides: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj.requires
	$(MAKE) -f sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/build.make sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj.provides.build
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj.provides

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj.provides.build: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flags.make
sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj: ../../../sdk/codec/flacdecode/main.c
	$(CMAKE_COMMAND) -E cmake_progress_report D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/flacdecode.plugin.dir/main.c.obj   -c D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/main.c

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/flacdecode.plugin.dir/main.c.i"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/main.c > CMakeFiles/flacdecode.plugin.dir/main.c.i

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/flacdecode.plugin.dir/main.c.s"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode/main.c -o CMakeFiles/flacdecode.plugin.dir/main.c.s

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj.requires:
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj.requires

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj.provides: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj.requires
	$(MAKE) -f sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/build.make sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj.provides.build
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj.provides

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj.provides.build: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj

# Object files for target flacdecode.plugin
flacdecode_plugin_OBJECTS = \
"CMakeFiles/flacdecode.plugin.dir/crc.c.obj" \
"CMakeFiles/flacdecode.plugin.dir/flac.c.obj" \
"CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj" \
"CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj" \
"CMakeFiles/flacdecode.plugin.dir/main.c.obj"

# External object files for target flacdecode.plugin
flacdecode_plugin_EXTERNAL_OBJECTS =

sdk/codec/flacdecode/flacdecode.plugin: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj
sdk/codec/flacdecode/flacdecode.plugin: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj
sdk/codec/flacdecode/flacdecode.plugin: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj
sdk/codec/flacdecode/flacdecode.plugin: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj
sdk/codec/flacdecode/flacdecode.plugin: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj
sdk/codec/flacdecode/flacdecode.plugin: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable flacdecode.plugin"
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-gcc.exe   -fno-asynchronous-unwind-tables -fno-omit-frame-pointer -gstabs -O3 -g3 -mhard-div -fno-short-enums -DNDEBUG   -fno-asynchronous-unwind-tables -fno-omit-frame-pointer -gstabs -nostartfiles -T"D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/lib/sm32/default.ld" "D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/lib/sm32/or32_crt0.o" "D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/lib/sm32/codec_crt0.o" "D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/lib/sm32/ticktimer.o" $(flacdecode_plugin_OBJECTS) $(flacdecode_plugin_EXTERNAL_OBJECTS)  -o flacdecode.plugin  -LD:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/lib/sm32  
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && C:/ITEGCC/bin/sm32-elf-objcopy.exe -O binary D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode/flacdecode.plugin D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/lib/sm32/flac.rawcodecs
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && dataconv -x D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/lib/sm32/flac.rawcodecs
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && mkrom -z -b 512K D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/target/ram/IT9079A1_Initial_DDR2_Mem_tiling_pitch2048_320MHZ.scr D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/lib/sm32/flac.rawcodecs D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/lib/sm32/flac.codecs

# Rule to build all files generated by this target.
sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/build: sdk/codec/flacdecode/flacdecode.plugin
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/build

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/requires: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/crc.c.obj.requires
sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/requires: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flac.c.obj.requires
sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/requires: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdata.c.obj.requires
sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/requires: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/flacdec.c.obj.requires
sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/requires: sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/main.c.obj.requires
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/requires

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/clean:
	cd D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode && $(CMAKE_COMMAND) -P CMakeFiles/flacdecode.plugin.dir/cmake_clean.cmake
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/clean

sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/codec/flacdecode D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850 D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/build/openrtos/codec_it9850/sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sdk/codec/flacdecode/CMakeFiles/flacdecode.plugin.dir/depend

