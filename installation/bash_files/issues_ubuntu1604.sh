

# opencv 320


```
[100%] Building CXX object modules/python2/CMakeFiles/opencv_python2.dir/__/src2/cv2.cpp.o
[100%] Building CXX object modules/stitching/CMakeFiles/opencv_perf_stitching.dir/perf/opencl/perf_warpers.cpp.o
Scanning dependencies of target opencv_python3
[100%] Building CXX object modules/python3/CMakeFiles/opencv_python3.dir/__/src2/cv2.cpp.o
In file included from /usr/local/lib/python3.7/site-packages/numpy/core/include/numpy/ndarraytypes.h:4:0,
                 from /usr/local/lib/python3.7/site-packages/numpy/core/include/numpy/ndarrayobject.h:18,
                 from /home/tree/opencv-3.2.0/modules/python/src2/cv2.cpp:10:
/usr/local/lib/python3.7/site-packages/numpy/core/include/numpy/npy_common.h:17:5: warning: "NPY_INTERNAL_BUILD" is not defined [-Wundef]
 #if NPY_INTERNAL_BUILD
     ^
[100%] Building CXX object modules/stitching/CMakeFiles/opencv_perf_stitching.dir/perf/perf_estimators.cpp.o
/home/tree/opencv-3.2.0/modules/python/src2/cv2.cpp: In function ‘bool pyopencv_to(PyObject*, T&, const char*) [with T = cv::String; PyObject = _object]’:
/home/tree/opencv-3.2.0/modules/python/src2/cv2.cpp:730:34: error: invalid conversion from ‘const char*’ to ‘char*’ [-fpermissive]
     char* str = PyString_AsString(obj);
                                  ^
[100%] Linking CXX executable ../../bin/opencv_perf_stitching
modules/python3/CMakeFiles/opencv_python3.dir/build.make:329: recipe for target 'modules/python3/CMakeFiles/opencv_python3.dir/__/src2/cv2.cpp.o' failed
make[2]: *** [modules/python3/CMakeFiles/opencv_python3.dir/__/src2/cv2.cpp.o] Error 1
CMakeFiles/Makefile2:14666: recipe for target 'modules/python3/CMakeFiles/opencv_python3.dir/all' failed
make[1]: *** [modules/python3/CMakeFiles/opencv_python3.dir/all] Error 2
make[1]: *** Waiting for unfinished jobs....
[100%] Built target opencv_perf_stitching
[100%] Linking CXX shared module ../../lib/cv2.so
[100%] Built target opencv_python2
Makefile:160: recipe for target 'all' failed
make: *** [all] Error 2
tree@machine:~/opencv-3.2.0/build$ 
```

Mon 13 May 01:38:43 BST 2019



# opencv 340


```

[ 99%] Linking CXX executable ../../bin/opencv_perf_stitching
[ 99%] Built target opencv_perf_stitching
Scanning dependencies of target opencv_python3
[ 99%] Building CXX object modules/python3/CMakeFiles/opencv_python3.dir/__/src2/cv2.cpp.o
/home/tree/Downloads/opencv-3.4.0/modules/python/src2/cv2.cpp: In function ‘bool pyopencv_to(PyObject*, T&, const char*) [with T = cv::String; PyObject = _object]’:
/home/tree/Downloads/opencv-3.4.0/modules/python/src2/cv2.cpp:885:34: error: invalid conversion from ‘const char*’ to ‘char*’ [-fpermissive]
     char* str = PyString_AsString(obj);
                                  ^
modules/python3/CMakeFiles/opencv_python3.dir/build.make:62: recipe for target 'modules/python3/CMakeFiles/opencv_python3.dir/__/src2/cv2.cpp.o' failed
make[2]: *** [modules/python3/CMakeFiles/opencv_python3.dir/__/src2/cv2.cpp.o] Error 1
CMakeFiles/Makefile2:7597: recipe for target 'modules/python3/CMakeFiles/opencv_python3.dir/all' failed
make[1]: *** [modules/python3/CMakeFiles/opencv_python3.dir/all] Error 2
make[1]: *** Waiting for unfinished jobs....
[ 99%] Linking CXX shared module ../../lib/cv2.so
[ 99%] Built target opencv_python2
Makefile:160: recipe for target 'all' failed
make: *** [all] Error 2

```

perhaps try
https://www.pyimagesearch.com/2018/08/15/how-to-install-opencv-4-on-ubuntu/



added: Mon 13 May 00:36:03 BST 2019
