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
CMAKE_SOURCE_DIR = /home/nmd/nmd-projects/blob_detection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nmd/nmd-projects/blob_detection/build

# Include any dependencies generated for this target.
include CMakeFiles/TrackBlob.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TrackBlob.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TrackBlob.dir/flags.make

CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o: CMakeFiles/TrackBlob.dir/flags.make
CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o: ../src/trackBlob.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nmd/nmd-projects/blob_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o -c /home/nmd/nmd-projects/blob_detection/src/trackBlob.cpp

CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nmd/nmd-projects/blob_detection/src/trackBlob.cpp > CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.i

CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nmd/nmd-projects/blob_detection/src/trackBlob.cpp -o CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.s

CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o.requires:

.PHONY : CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o.requires

CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o.provides: CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o.requires
	$(MAKE) -f CMakeFiles/TrackBlob.dir/build.make CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o.provides.build
.PHONY : CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o.provides

CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o.provides.build: CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o


# Object files for target TrackBlob
TrackBlob_OBJECTS = \
"CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o"

# External object files for target TrackBlob
TrackBlob_EXTERNAL_OBJECTS =

TrackBlob: CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o
TrackBlob: CMakeFiles/TrackBlob.dir/build.make
TrackBlob: /usr/local/lib/libopencv_xphoto.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_xobjdetect.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_tracking.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_surface_matching.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_structured_light.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_stereo.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_saliency.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_rgbd.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_reg.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_plot.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_optflow.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_line_descriptor.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_fuzzy.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_dpm.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_dnn.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_datasets.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_ccalib.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_bioinspired.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_bgsegm.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_aruco.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_videostab.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_superres.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_stitching.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_photo.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_text.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_face.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_ximgproc.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_xfeatures2d.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_shape.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_video.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_objdetect.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_calib3d.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_features2d.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_ml.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_highgui.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_videoio.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_imgproc.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_flann.so.3.1.0
TrackBlob: /usr/local/lib/libopencv_core.so.3.1.0
TrackBlob: CMakeFiles/TrackBlob.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nmd/nmd-projects/blob_detection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TrackBlob"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TrackBlob.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TrackBlob.dir/build: TrackBlob

.PHONY : CMakeFiles/TrackBlob.dir/build

CMakeFiles/TrackBlob.dir/requires: CMakeFiles/TrackBlob.dir/src/trackBlob.cpp.o.requires

.PHONY : CMakeFiles/TrackBlob.dir/requires

CMakeFiles/TrackBlob.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TrackBlob.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TrackBlob.dir/clean

CMakeFiles/TrackBlob.dir/depend:
	cd /home/nmd/nmd-projects/blob_detection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nmd/nmd-projects/blob_detection /home/nmd/nmd-projects/blob_detection /home/nmd/nmd-projects/blob_detection/build /home/nmd/nmd-projects/blob_detection/build /home/nmd/nmd-projects/blob_detection/build/CMakeFiles/TrackBlob.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TrackBlob.dir/depend

