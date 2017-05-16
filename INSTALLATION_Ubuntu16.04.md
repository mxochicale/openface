OpenFace
---


[Main Source](https://github.com/TadasBaltrusaitis/OpenFace)


# Installation for  Ubuntu 16.04

### Requirements in this order

* Python 2.7.13
* OpenCV 3.2 
* dlib-19.4


```
Could NOT find TBB (missing: TBB_ROOT_DIR TBB_INCLUDE_DIR TBB_LIBRARY)
```
sudo apt-get install libtbb-dev

[install libtbb-dev](https://github.com/Project-OSRM/osrm-backend/issues/1129)



### Installation 
```
cd
git clone https://github.com/TadasBaltrusaitis/OpenFace.git
cd OpenFace && mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE ..
```



```
$ cmake -D CMAKE_BUILD_TYPE=RELEASE ..
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
/usr/include/c++/5/bits/unique_ptr.h:49:28: note: declared here
   template<typename> class auto_ptr;
                            ^
[ 62%] Building CXX object lib/3rdParty/dlib/CMakeFiles/dlib.dir/include/dlib/image_loader/jpeg_loader.o
In file included from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_loader/../array2d/../serialize.h:158:0,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_loader/../array2d/array2d_kernel.h:9,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_loader/../array2d.h:7,
                 from /home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_loader/jpeg_loader.cpp:9:
/home/map479/OpenFace/lib/3rdParty/dlib/include/dlib/image_loader/../array2d/../smart_pointers/shared_ptr.h:299:18: warning: ‘template<class> class std::auto_ptr’ is deprecated [-Wdeprecated-declarations]
             std::auto_ptr<Y>& r
                  ^
In file included from /usr/include/c++/5/bits/lo
.
.
.
.
.


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



[Unix-Installation Instructions](https://github.com/TadasBaltrusaitis/OpenFace/wiki/Unix-Installation)



### Testing

pwd
/home/map479/OpenFace/build/bin

```
cd bin/
./FaceLandmarkVid -f "../../samples/changeLighting.wmv"
./FaceLandmarkVidMulti -f  "../../samples/multi_face.avi"
./FaceLandmarkVid -device /dev/video0
./FaceLandmarkVidMulti -device /dev/video0
```
```
./FeatureExtraction -rigid -verbose -f "../../samples/default.wmv" -of "output_features/default.txt" -simalign output_features/aligned
```



:)  Wed 10 May 23:47:11 BST 2017 @bhamuk



ERROR./FeatureExtraction -rigid -verbose -device /dev/video0  -of "output_features/default.txt" -simalign output_features/aligned


