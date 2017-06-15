OpenFace
---

* [Unix-Installation Instructions](https://github.com/TadasBaltrusaitis/OpenFace/wiki/Unix-Installation)


# Installation for  Ubuntu 16.04

### Dependencies
It is suggested that following dependencies have to be installed to
build OpenFace to avoid any dependencies issues in the installation:

### Python

2.7.13 (after updgrading the machine, the python version is 2.7.12)

sudo apt-get install python-dev python-numpy

```
$ sudo apt-get install python-dev python-numpy
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  linux-headers-4.4.0-31 linux-headers-4.4.0-31-generic linux-image-4.4.0-31-generic linux-image-extra-4.4.0-31-generic ubuntu-core-launcher
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  libblas-common libblas3 libexpat1-dev libgfortran3 liblapack3 libpython-dev libpython2.7-dev python2.7-dev
Suggested packages:
  gfortran python-nose python-numpy-dbg python-numpy-doc
The following NEW packages will be installed
  libblas-common libblas3 libexpat1-dev libgfortran3 liblapack3 libpython-dev libpython2.7-dev python-dev python-numpy python2.7-dev
0 to upgrade, 10 to newly install, 0 to remove and 7 not to upgrade.
Need to get 32.3 MB of archives.
After this operation, 59.8 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y

```


%cd && wget https://bootstrap.pypa.io/get-pip.py
%sudo python get-pip.py
%sudo pip install numpy

### OpenCV 3.2
[Following this instructions](https://github.com/mxochicale/openCV/blob/master/INSTALLATION_on_Ubuntu1604.md)


```
echo "Installing Essential dependencies..."
sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libgtk-3-dev
sudo apt-get install libatlas-base-dev gfortran
```



##### Step #2: Download the OpenCV source
```
sudo apt-get install libtbb-dev
```

```
cd && wget -O opencv.zip https://github.com/opencv/opencv/archive/3.2.0.zip && unzip opencv.zip && rm opencv.zip
```
```
cd && wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.2.0.zip && unzip opencv_contrib.zip && unzip opencv_contrib.zip && rm opencv_contrib.zip
yes [A]ll
```


```
cd ~/opencv-3.2.0/ && mkdir build && cd build
```




```
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_C_EXAMPLES=OFF \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.2.0/modules \
	-D PYTHON_EXECUTABLE=~/.virtualenvs/cv/bin/python \
	-D WITH_JPEG=OFF \
	-D BUILD_EXAMPLES=OFF ..
```

"-D WITH_JPEG=OFF" is used to get rid of "Corrupt JPEG data: 1 extraneous bytes before marker 0xd6" in OpenFace

```
--
-- General configuration for OpenCV 3.2.0 =====================================
--   Version control:               unknown
--
--   Extra modules:
--     Location (extra):            /home/map479/opencv_contrib-3.2.0/modules
--     Version control (extra):     unknown
--
--   Platform:
--     Timestamp:                   2017-06-15T21:08:46Z
--     Host:                        Linux 4.4.0-79-generic x86_64
--     CMake:                       3.5.1
--     CMake generator:             Unix Makefiles
--     CMake build tool:            /usr/bin/make
--     Configuration:               RELEASE
--
--   C/C++:
--     Built as dynamic libs?:      YES
--     C++ Compiler:                /usr/bin/c++  (ver 5.4.0)
--     C++ flags (Release):         -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -mno-avx -msse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -O3 -DNDEBUG  -DNDEBUG
--     C++ flags (Debug):           -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -mno-avx -msse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -ffunction-sections -fvisibility=hidden -fvisibility-inlines-hidden -g  -O0 -DDEBUG -D_DEBUG
--     C Compiler:                  /usr/bin/cc
--     C flags (Release):           -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wmissing-prototypes -Wstrict-prototypes -Wundef -Winit-self -Wpointer-arith -Wshadow -Wno-narrowing -Wno-comment -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -mno-avx -msse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -ffunction-sections -fvisibility=hidden -O3 -DNDEBUG  -DNDEBUG
--     C flags (Debug):             -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wmissing-prototypes -Wstrict-prototypes -Wundef -Winit-self -Wpointer-arith -Wshadow -Wno-narrowing -Wno-comment -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -mno-avx -msse3 -mno-ssse3 -mno-sse4.1 -mno-sse4.2 -ffunction-sections -fvisibility=hidden -g  -O0 -DDEBUG -D_DEBUG
--     Linker flags (Release):
--     Linker flags (Debug):
--     ccache:                      NO
--     Precompiled headers:         YES
--     Extra dependencies:          /usr/lib/x86_64-linux-gnu/libpng.so /usr/lib/x86_64-linux-gnu/libz.so /usr/lib/x86_64-linux-gnu/libtiff.so /usr/lib/x86_64-linux-gnu/libjasper.so /usr/lib/x86_64-linux-gnu/libjpeg.so gtk-3 gdk-3 pangocairo-1.0 pango-1.0 atk-1.0 cairo-gobject cairo gdk_pixbuf-2.0 gio-2.0 gobject-2.0 glib-2.0 gthread-2.0 avcodec-ffmpeg avformat-ffmpeg avutil-ffmpeg swscale-ffmpeg dl m pthread rt
--     3rdparty dependencies:       libwebp IlmImf libprotobuf
--
--   OpenCV modules:
--     To be built:                 core flann imgproc ml photo reg surface_matching video dnn freetype fuzzy imgcodecs shape videoio highgui objdetect plot superres ts xobjdetect xphoto bgsegm bioinspired dpm face features2d line_descriptor saliency text calib3d ccalib datasets rgbd stereo tracking videostab xfeatures2d ximgproc aruco optflow phase_unwrapping stitching structured_light
--     Disabled:                    world contrib_world
--     Disabled by dependency:      -
--     Unavailable:                 cudaarithm cudabgsegm cudacodec cudafeatures2d cudafilters cudaimgproc cudalegacy cudaobjdetect cudaoptflow cudastereo cudawarping cudev java python2 python3 viz cnn_3dobj cvv hdf matlab sfm
--
--   GUI:
--     QT:                          NO
--     GTK+ 3.x:                    YES (ver 3.18.9)
--     GThread :                    YES (ver 2.48.2)
--     GtkGlExt:                    NO
--     OpenGL support:              NO
--     VTK support:                 NO
--
--   Media I/O:
--     ZLib:                        /usr/lib/x86_64-linux-gnu/libz.so (ver 1.2.8)
--     JPEG:                        NO
--     WEBP:                        build (ver 0.3.1)
--     PNG:                         /usr/lib/x86_64-linux-gnu/libpng.so (ver 1.2.54)
--     TIFF:                        /usr/lib/x86_64-linux-gnu/libtiff.so (ver 42 - 4.0.6)
--     JPEG 2000:                   /usr/lib/x86_64-linux-gnu/libjasper.so (ver 1.900.1)
--     OpenEXR:                     build (ver 1.7.1)
--     GDAL:                        NO
--     GDCM:                        NO
--
--   Video I/O:
--     DC1394 1.x:                  NO
--     DC1394 2.x:                  NO
--     FFMPEG:                      YES
--       avcodec:                   YES (ver 56.60.100)
--       avformat:                  YES (ver 56.40.101)
--       avutil:                    YES (ver 54.31.100)
--       swscale:                   YES (ver 3.1.101)
--       avresample:                NO
--     GStreamer:                   NO
--     OpenNI:                      NO
--     OpenNI PrimeSensor Modules:  NO
--     OpenNI2:                     NO
--     PvAPI:                       NO
--     GigEVisionSDK:               NO
--     Aravis SDK:                  NO
--     UniCap:                      NO
--     UniCap ucil:                 NO
--     V4L/V4L2:                    NO/YES
--     XIMEA:                       NO
--     Xine:                        NO
--     gPhoto2:                     NO
--
--   Parallel framework:            pthreads
--
--   Other third-party libraries:
--     Use IPP:                     9.0.1 [9.0.1]
--          at:                     /home/map479/opencv-3.2.0/build/3rdparty/ippicv/ippicv_lnx
--     Use IPP Async:               NO
--     Use VA:                      NO
--     Use Intel VA-API/OpenCL:     NO
--     Use Lapack:                  NO
--     Use Eigen:                   NO
--     Use Cuda:                    NO
--     Use OpenCL:                  YES
--     Use OpenVX:                  NO
--     Use custom HAL:              NO
--
--   OpenCL:                        <Dynamic loading of OpenCL library>
--     Include path:                /home/map479/opencv-3.2.0/3rdparty/include/opencl/1.2
--     Use AMDFFT:                  NO
--     Use AMDBLAS:                 NO
--
--   Python 2:
--     Interpreter:                 NO
--
--   Python 3:
--     Interpreter:                 NO
--
--   Python (for build):            NO
--
--   Java:
--     ant:                         NO
--     JNI:                         NO
--     Java wrappers:               NO
--     Java tests:                  NO
--
--   Matlab:                        Matlab not found or implicitly disabled
--
--   Documentation:
--     Doxygen:                     NO
--
--   Tests and samples:
--     Tests:                       YES
--     Performance tests:           YES
--     C/C++ Examples:              NO
--
--   Install path:                  /usr/local
--
--   cvconfig.h is in:              /home/map479/opencv-3.2.0/build
-- -----------------------------------------------------------------
--
-- Configuring done
-- Generating done
-- Build files have been written to: /home/map479/opencv-3.2.0/build

```


Now we can finally compile OpenCV:
```
make -j4
```
Assuming that OpenCV compiled without error, you can test it and then install it on your Ubuntu system:

```
$ cd bin/

```

```
sudo make install
sudo ldconfig
```





### Boost C++ Dependency

sudo apt-get install libboost-all-dev
```
$ sudo apt-get install libboost-all-dev
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  libmircommon5 linux-headers-4.4.0-31 linux-headers-4.4.0-31-generic linux-image-4.4.0-31-generic linux-image-extra-4.4.0-31-generic ubuntu-core-launcher
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  icu-devtools libboost-atomic-dev libboost-atomic1.58-dev libboost-atomic1.58.0 libboost-chrono-dev libboost-chrono1.58-dev libboost-chrono1.58.0 libboost-context-dev libboost-context1.58-dev
  libboost-context1.58.0 libboost-coroutine-dev libboost-coroutine1.58-dev libboost-coroutine1.58.0 libboost-date-time-dev libboost-date-time1.58-dev libboost-dev libboost-exception-dev
  libboost-exception1.58-dev libboost-filesystem-dev libboost-filesystem1.58-dev libboost-graph-dev libboost-graph-parallel-dev libboost-graph-parallel1.58-dev libboost-graph-parallel1.58.0
  libboost-graph1.58-dev libboost-graph1.58.0 libboost-iostreams-dev libboost-iostreams1.58-dev libboost-locale-dev libboost-locale1.58-dev libboost-locale1.58.0 libboost-log-dev libboost-log1.58-dev
  libboost-log1.58.0 libboost-math-dev libboost-math1.58-dev libboost-math1.58.0 libboost-mpi-dev libboost-mpi-python-dev libboost-mpi-python1.58-dev libboost-mpi-python1.58.0 libboost-mpi1.58-dev
  libboost-mpi1.58.0 libboost-program-options-dev libboost-program-options1.58-dev libboost-program-options1.58.0 libboost-python-dev libboost-python1.58-dev libboost-python1.58.0 libboost-random-dev
  libboost-random1.58-dev libboost-random1.58.0 libboost-regex-dev libboost-regex1.58-dev libboost-regex1.58.0 libboost-serialization-dev libboost-serialization1.58-dev libboost-serialization1.58.0
  libboost-signals-dev libboost-signals1.58-dev libboost-signals1.58.0 libboost-system-dev libboost-system1.58-dev libboost-test-dev libboost-test1.58-dev libboost-test1.58.0 libboost-thread-dev
  libboost-thread1.58-dev libboost-thread1.58.0 libboost-timer-dev libboost-timer1.58-dev libboost-timer1.58.0 libboost-tools-dev libboost-wave-dev libboost-wave1.58-dev libboost-wave1.58.0
  libboost1.58-dev libboost1.58-tools-dev libhwloc-dev libhwloc-plugins libhwloc5 libibverbs-dev libibverbs1 libicu-dev libltdl-dev libnuma-dev libopenmpi-dev libopenmpi1.10 libtool mpi-default-bin
  mpi-default-dev ocl-icd-libopencl1 openmpi-bin openmpi-common
Suggested packages:
  libboost-doc graphviz libboost1.58-doc gccxml libmpfrc++-dev libntl-dev xsltproc doxygen docbook-xml docbook-xsl default-jdk fop libhwloc-contrib-plugins icu-doc libtool-doc opennmpi-doc autoconf
  automaken gcj-jdk opencl-icd openmpi-checkpoint
The following NEW packages will be installed
  icu-devtools libboost-all-dev libboost-atomic-dev libboost-atomic1.58-dev libboost-atomic1.58.0 libboost-chrono-dev libboost-chrono1.58-dev libboost-chrono1.58.0 libboost-context-dev
  libboost-context1.58-dev libboost-context1.58.0 libboost-coroutine-dev libboost-coroutine1.58-dev libboost-coroutine1.58.0 libboost-date-time-dev libboost-date-time1.58-dev libboost-dev
  libboost-exception-dev libboost-exception1.58-dev libboost-filesystem-dev libboost-filesystem1.58-dev libboost-graph-dev libboost-graph-parallel-dev libboost-graph-parallel1.58-dev
  libboost-graph-parallel1.58.0 libboost-graph1.58-dev libboost-graph1.58.0 libboost-iostreams-dev libboost-iostreams1.58-dev libboost-locale-dev libboost-locale1.58-dev libboost-locale1.58.0
  libboost-log-dev libboost-log1.58-dev libboost-log1.58.0 libboost-math-dev libboost-math1.58-dev libboost-math1.58.0 libboost-mpi-dev libboost-mpi-python-dev libboost-mpi-python1.58-dev
  libboost-mpi-python1.58.0 libboost-mpi1.58-dev libboost-mpi1.58.0 libboost-program-options-dev libboost-program-options1.58-dev libboost-program-options1.58.0 libboost-python-dev
  libboost-python1.58-dev libboost-python1.58.0 libboost-random-dev libboost-random1.58-dev libboost-random1.58.0 libboost-regex-dev libboost-regex1.58-dev libboost-regex1.58.0
  libboost-serialization-dev libboost-serialization1.58-dev libboost-serialization1.58.0 libboost-signals-dev libboost-signals1.58-dev libboost-signals1.58.0 libboost-system-dev libboost-system1.58-dev
  libboost-test-dev libboost-test1.58-dev libboost-test1.58.0 libboost-thread-dev libboost-thread1.58-dev libboost-thread1.58.0 libboost-timer-dev libboost-timer1.58-dev libboost-timer1.58.0
  libboost-tools-dev libboost-wave-dev libboost-wave1.58-dev libboost-wave1.58.0 libboost1.58-dev libboost1.58-tools-dev libhwloc-dev libhwloc-plugins libhwloc5 libibverbs-dev libibverbs1 libicu-dev
  libltdl-dev libnuma-dev libopenmpi-dev libopenmpi1.10 libtool mpi-default-bin mpi-default-dev ocl-icd-libopencl1 openmpi-bin openmpi-common
0 to upgrade, 95 to newly install, 0 to remove and 6 not to upgrade.
Need to get 25.9 MB of archives.
After this operation, 232 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
```







### OpenFace Installation
```
cd
git clone https://github.com/TadasBaltrusaitis/OpenFace.git
cd OpenFace && mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE ..
```




```
$ cmake -D CMAKE_BUILD_TYPE=RELEASE ..
-- The C compiler identification is GNU 5.4.0
-- The CXX compiler identification is GNU 5.4.0
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Found OpenCV: /usr/local (found version "3.2.0")
OpenCV information:
  OpenCV_INCLUDE_DIRS: /usr/local/include;/usr/local/include/opencv
  OpenCV_LIBRARIES: opencv_calib3d;opencv_core;opencv_features2d;opencv_flann;opencv_highgui;opencv_imgcodecs;opencv_imgproc;opencv_ml;opencv_objdetect;opencv_photo;opencv_shape;opencv_stitching;opencv_superres;opencv_video;opencv_videoio;opencv_videostab;opencv_aruco;opencv_bgsegm;opencv_bioinspired;opencv_ccalib;opencv_datasets;opencv_dnn;opencv_dpm;opencv_face;opencv_freetype;opencv_fuzzy;opencv_line_descriptor;opencv_optflow;opencv_phase_unwrapping;opencv_plot;opencv_reg;opencv_rgbd;opencv_saliency;opencv_stereo;opencv_structured_light;opencv_surface_matching;opencv_text;opencv_tracking;opencv_xfeatures2d;opencv_ximgproc;opencv_xobjdetect;opencv_xphoto
  OpenCV_LIBRARY_DIRS:
-- Boost version: 1.58.0
-- Found the following Boost libraries:
--   filesystem
--   system
Boost information:
  Boost_INCLUDE_DIRS: /usr/include
  Boost_LIBRARIES: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_system.so
  Boost_LIBRARY_DIRS: /usr/lib/x86_64-linux-gnu
-- Found TBB: /usr (found version "4.4")  
-- Looking for XOpenDisplay in /usr/lib/x86_64-linux-gnu/libX11.so;/usr/lib/x86_64-linux-gnu/libXext.so
-- Looking for XOpenDisplay in /usr/lib/x86_64-linux-gnu/libX11.so;/usr/lib/x86_64-linux-gnu/libXext.so - found
-- Looking for gethostbyname
-- Looking for gethostbyname - found
-- Looking for connect
-- Looking for connect - found
-- Looking for remove
-- Looking for remove - found
-- Looking for shmat
-- Looking for shmat - found
-- Looking for IceConnectionNumber in ICE
-- Looking for IceConnectionNumber in ICE - found
-- Found X11: /usr/lib/x86_64-linux-gnu/libX11.so
-- Found JPEG: /usr/lib/x86_64-linux-gnu/libjpeg.so  
-- Searching for BLAS and LAPACK
-- Looking for sys/types.h
-- Looking for sys/types.h - found
-- Looking for stdint.h
-- Looking for stdint.h - found
-- Looking for stddef.h
-- Looking for stddef.h - found
-- Check size of void*
-- Check size of void* - done
-- Found LAPACK library
-- Found ATLAS BLAS library
-- Looking for cblas_ddot
-- Looking for cblas_ddot - found
-- Check for STD namespace
-- Check for STD namespace - found
-- Looking for C++ include iostream
-- Looking for C++ include iostream - found
-- Configuring done
-- Generating done
-- Build files have been written to: /home/map479/OpenFace/build


```


```
make
```

```
.
.
.
.
.


[ 94%] Linking CXX executable ../../bin/FaceLandmarkVid
[ 94%] Built target FaceLandmarkVid
Scanning dependencies of target FaceLandmarkVidMulti
[ 96%] Building CXX object exe/FaceLandmarkVidMulti/CMakeFiles/FaceLandmarkVidMulti.dir/FaceLandmarkVidMulti.cpp.o
In file included from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../serialize.h:158:0,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/matrix.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/scan_image.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/FaceLandmarkVidMulti.cpp:37:
/home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../smart_pointers/shared_ptr.h:299:18: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
             std::auto_ptr<Y>& r
                  ^
In file included from /usr/include/c++/5/bits/locale_conv.h:41:0,
                 from /usr/include/c++/5/locale:43,
                 from /usr/include/c++/5/iomanip:43,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../serialize.h:140,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/matrix.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/scan_image.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/FaceLandmarkVidMulti.cpp:37:
/usr/include/c++/5/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
In file included from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../serialize.h:158:0,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/matrix.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/scan_image.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/FaceLandmarkVidMulti.cpp:37:
/home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../smart_pointers/shared_ptr.h:331:18: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
             std::auto_ptr<Y>& r
                  ^
In file included from /usr/include/c++/5/bits/locale_conv.h:41:0,
                 from /usr/include/c++/5/locale:43,
                 from /usr/include/c++/5/iomanip:43,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../serialize.h:140,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/matrix.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/scan_image.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/FaceLandmarkVidMulti.cpp:37:
/usr/include/c++/5/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
In file included from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/../smart_pointers_thread_safe.h:6:0,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/thread_pool_extension.h:14,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads.h:17,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_svm_problem_threaded.h:13,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_svm_object_detection_problem.h:8,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_object_detection_trainer.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/remove_unobtainable_rectangles.h:11,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:15,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/FaceLandmarkVidMulti.cpp:37:
/home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/../smart_pointers/shared_ptr_thread_safe.h:263:18: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
             std::auto_ptr<Y>& r
                  ^
In file included from /usr/include/c++/5/bits/locale_conv.h:41:0,
                 from /usr/include/c++/5/locale:43,
                 from /usr/include/c++/5/iomanip:43,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../serialize.h:140,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/matrix.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/scan_image.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/FaceLandmarkVidMulti.cpp:37:
/usr/include/c++/5/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
In file included from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/../smart_pointers_thread_safe.h:6:0,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/thread_pool_extension.h:14,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads.h:17,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_svm_problem_threaded.h:13,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_svm_object_detection_problem.h:8,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_object_detection_trainer.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/remove_unobtainable_rectangles.h:11,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:15,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/FaceLandmarkVidMulti.cpp:37:
/home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/../smart_pointers/shared_ptr_thread_safe.h:294:18: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
             std::auto_ptr<Y>& r
                  ^
In file included from /usr/include/c++/5/bits/locale_conv.h:41:0,
                 from /usr/include/c++/5/locale:43,
                 from /usr/include/c++/5/iomanip:43,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../serialize.h:140,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/matrix.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/scan_image.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FaceLandmarkVidMulti/FaceLandmarkVidMulti.cpp:37:
/usr/include/c++/5/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
[ 97%] Linking CXX executable ../../bin/FaceLandmarkVidMulti
[ 97%] Built target FaceLandmarkVidMulti
Scanning dependencies of target FeatureExtraction
[ 98%] Building CXX object exe/FeatureExtraction/CMakeFiles/FeatureExtraction.dir/FeatureExtraction.cpp.o
In file included from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../serialize.h:158:0,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/matrix.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/scan_image.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FeatureExtraction/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FeatureExtraction/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FeatureExtraction/FeatureExtraction.cpp:54:
/home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../smart_pointers/shared_ptr.h:299:18: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
             std::auto_ptr<Y>& r
                  ^
In file included from /usr/include/c++/5/bits/locale_conv.h:41:0,
                 from /usr/include/c++/5/locale:43,
                 from /usr/include/boost/filesystem/path_traits.hpp:29,
                 from /usr/include/boost/filesystem/path.hpp:25,
                 from /usr/include/boost/filesystem.hpp:16,
                 from /home/map479/OpenFace/exe/FeatureExtraction/FeatureExtraction.cpp:49:
/usr/include/c++/5/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
In file included from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../serialize.h:158:0,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/matrix.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/scan_image.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:6,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FeatureExtraction/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FeatureExtraction/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FeatureExtraction/FeatureExtraction.cpp:54:
/home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../matrix/../smart_pointers/shared_ptr.h:331:18: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
             std::auto_ptr<Y>& r
                  ^
In file included from /usr/include/c++/5/bits/locale_conv.h:41:0,
                 from /usr/include/c++/5/locale:43,
                 from /usr/include/boost/filesystem/path_traits.hpp:29,
                 from /usr/include/boost/filesystem/path.hpp:25,
                 from /usr/include/boost/filesystem.hpp:16,
                 from /home/map479/OpenFace/exe/FeatureExtraction/FeatureExtraction.cpp:49:
/usr/include/c++/5/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
In file included from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/../smart_pointers_thread_safe.h:6:0,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/thread_pool_extension.h:14,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads.h:17,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_svm_problem_threaded.h:13,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_svm_object_detection_problem.h:8,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_object_detection_trainer.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/remove_unobtainable_rectangles.h:11,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:15,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FeatureExtraction/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FeatureExtraction/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FeatureExtraction/FeatureExtraction.cpp:54:
/home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/../smart_pointers/shared_ptr_thread_safe.h:263:18: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
             std::auto_ptr<Y>& r
                  ^
In file included from /usr/include/c++/5/bits/locale_conv.h:41:0,
                 from /usr/include/c++/5/locale:43,
                 from /usr/include/boost/filesystem/path_traits.hpp:29,
                 from /usr/include/boost/filesystem/path.hpp:25,
                 from /usr/include/boost/filesystem.hpp:16,
                 from /home/map479/OpenFace/exe/FeatureExtraction/FeatureExtraction.cpp:49:
/usr/include/c++/5/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
In file included from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/../smart_pointers_thread_safe.h:6:0,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/thread_pool_extension.h:14,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads.h:17,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_svm_problem_threaded.h:13,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_svm_object_detection_problem.h:8,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/structural_object_detection_trainer.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/remove_unobtainable_rectangles.h:11,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing.h:15,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/frontal_face_detector.h:7,
                 from /home/map479/OpenFace/exe/FeatureExtraction/../../lib/local/LandmarkDetector/include/LandmarkDetectorModel.h:43,
                 from /home/map479/OpenFace/exe/FeatureExtraction/../../lib/local/LandmarkDetector/include/LandmarkCoreIncludes.h:39,
                 from /home/map479/OpenFace/exe/FeatureExtraction/FeatureExtraction.cpp:54:
/home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_processing/../image_processing/../svm/../threads/../smart_pointers/shared_ptr_thread_safe.h:294:18: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
             std::auto_ptr<Y>& r
                  ^
In file included from /usr/include/c++/5/bits/locale_conv.h:41:0,
                 from /usr/include/c++/5/locale:43,
                 from /usr/include/boost/filesystem/path_traits.hpp:29,
                 from /usr/include/boost/filesystem/path.hpp:25,
                 from /usr/include/boost/filesystem.hpp:16,
                 from /home/map479/OpenFace/exe/FeatureExtraction/FeatureExtraction.cpp:49:
/usr/include/c++/5/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
[100%] Linking CXX executable ../../bin/FeatureExtraction
[100%] Built target FeatureExtraction


```







### Testing


```
cd bin/
./FaceLandmarkVid -f "../../samples/changeLighting.wmv"
./FaceLandmarkVidMulti -f  "../../samples/multi_face.avi"
```

From the webcam. To exit, press Q key
```
./FaceLandmarkVid -device /dev/video0
./FaceLandmarkVidMulti -device /dev/video0
```


```
./FeatureExtraction -rigid -verbose -f "../../samples/default.wmv" -of "output_features/default.txt" -simalign output_features/aligned
```


DONE :). Thu 15 Jun 22:50:19 BST 2017 @bhamuk
