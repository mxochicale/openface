[OpenFace for ROS](https://github.com/interaction-lab/openface_ros)
---


### OpenFace Dependencies

[Unix-Installation Instructions](https://github.com/TadasBaltrusaitis/OpenFace/wiki/Unix-Installation)

### Python

sudo apt-get install python-dev python-numpy


### OpenCV 3.2

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



# OpenFace Installation

(6971/6971), 494.96 MiB
```
cd && mkdir OpenFaceROS && cd OpenFaceROS
git clone https://github.com/interaction-lab/OpenFace
cd OpenFace && mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE ..
```



```
make
```

```
sudo make install
```


```
$ sudo make install
[sudo] password for map479:
[ 64%] Built target dlib
[ 79%] Built target LandmarkDetector
[ 89%] Built target FaceAnalyser
[ 92%] Built target FaceLandmarkImg
[ 94%] Built target FaceLandmarkVid
[ 97%] Built target FaceLandmarkVidMulti
[100%] Built target FeatureExtraction
Install the project...
-- Install configuration: "RELEASE"
-- Installing: /usr/local/lib/openface/libLandmarkDetector.a
-- Installing: /usr/local/include/openface/CCNF_patch_expert.h
-- Installing: /usr/local/include/openface/LandmarkCoreIncludes.h
-- Installing: /usr/local/include/openface/LandmarkDetectionValidator.h
-- Installing: /usr/local/include/openface/LandmarkDetectorFunc.h
-- Installing: /usr/local/include/openface/LandmarkDetectorModel.h
-- Installing: /usr/local/include/openface/LandmarkDetectorParameters.h
-- Installing: /usr/local/include/openface/LandmarkDetectorUtils.h
-- Installing: /usr/local/include/openface/Patch_experts.h
-- Installing: /usr/local/include/openface/PAW.h
-- Installing: /usr/local/include/openface/PDM.h
-- Installing: /usr/local/include/openface/SVR_patch_expert.h
-- Installing: /usr/local/include/openface/stdafx.h
-- Installing: /usr/local/lib/openface/libFaceAnalyser.a
-- Installing: /usr/local/include/openface/Face_utils.h
-- Installing: /usr/local/include/openface/FaceAnalyser.h
-- Installing: /usr/local/include/openface/SVM_dynamic_lin.h
-- Installing: /usr/local/include/openface/SVM_static_lin.h
-- Installing: /usr/local/include/openface/SVR_dynamic_lin_regressors.h
-- Installing: /usr/local/include/openface/SVR_static_lin_regressors.h
-- Installing: /usr/local/include/openface/GazeEstimation.h
-- Installing: /usr/local/bin/FaceLandmarkImg
-- Set runtime path of "/usr/local/bin/FaceLandmarkImg" to ""
-- Installing: /usr/local/bin/FaceLandmarkVid
-- Set runtime path of "/usr/local/bin/FaceLandmarkVid" to ""
-- Installing: /usr/local/bin/FaceLandmarkVidMulti
-- Set runtime path of "/usr/local/bin/FaceLandmarkVidMulti" to ""

```


### Testing


```
cd ~/OpenFaceROS/OpenFace/build/bin
./FaceLandmarkVid -f "../../samples/changeLighting.wmv"
./FaceLandmarkVidMulti -f  "../../samples/multi_face.avi"
```

From the webcam. To exit, press Q key
```
cd ~/OpenFaceROS/OpenFace/build/bin
./FaceLandmarkVid -device /dev/video0
./FaceLandmarkVidMulti -device /dev/video0
```


```
cd ~/OpenFaceROS/OpenFace/build/bin
./FeatureExtraction -rigid -verbose -f "../../samples/default.wmv" -of "output_features/default.txt" -simalign output_features/aligned
```





# ROS KINETIC INSTALLATION



```
sudo apt-get install liblapack-dev liblapack3 libopenblas-base libopenblas-dev
```  

1.
```
cd ~/catkin_ws/src/ && git clone https://github.com/interaction-lab/openface_ros
```

2.
 then run catkin_make from the catkin workspace root folder.
```
cd .. && catkin_make
```

3. source the package
 Make sure the <catkin_workspace>/devel/setup.bash file is sourced.

```
source ~/.bashrc
```



Clean the catkin_ws
```
cd ~/catkin_ws/src && rm -rf openface_ros/
cd ~/catkin_ws/devel/share && rm -rf openface_ros/
cd ~/catkin_ws && catkin_make
```




# TESTING

terminals:


T1
```
roscore
```

T2
```
rosrun usb_cam usb_cam_node
```

T3
```
rosrun openface_ros openface_ros _image_topic:="/usb_cam/image_raw"
```


```
$ rosnode list
/openface_ros
/rosout
/usb_cam
```

```
$ rostopic list
/faces
/rosout
/rosout_agg
/tf
/usb_cam/camera_info
/usb_cam/image_raw
/usb_cam/image_raw/compressed
/usb_cam/image_raw/compressed/parameter_descriptions
/usb_cam/image_raw/compressed/parameter_updates
/usb_cam/image_raw/compressedDepth
/usb_cam/image_raw/compressedDepth/parameter_descriptions
/usb_cam/image_raw/compressedDepth/parameter_updates
/usb_cam/image_raw/theora
/usb_cam/image_raw/theora/parameter_descriptions
/usb_cam/image_raw/theora/parameter_updates
```

```
rostopic echo /faces
```




# ISSUES


## OPENFACE_FA_LIB NOTFOUND

https://github.com/interaction-lab/openface_ros/issues/2

```
-- Found OpenCV: /opt/ros/kinetic (found suitable version "3.2.0", minimum required is "3")
CMake Error at openface_ros/CMakeLists.txt:26 (message):
  message called with incorrect number of arguments


CMake Error at openface_ros/CMakeLists.txt:27 (get_filename_component):
  get_filename_component called with incorrect number of arguments


CMake Error at openface_ros/CMakeLists.txt:28 (message):
  message called with incorrect number of arguments


  CMake Error: The following variables are used in this project, but they are set to NOTFOUND.
  Please set them or make sure they are set and tested correctly in the CMake files:
  OPENFACE_FA_LIB
      linked by target "openface_ros" in directory /home/map479/catkin_ws/src/openface_ros
  OPENFACE_LD_LIB
      linked by target "openface_ros" in directory /home/map479/catkin_ws/src/openface_ros

```

Install Open face with
```
sudo make install
```


## /usr/bin/ld: cannot find -lopenblas

```
[100%] Linking CXX executable /home/map479/catkin_ws/devel/lib/openface_ros/openface_ros
/usr/bin/ld: cannot find -lopenblas
/usr/bin/ld: cannot find -lopenblas
collect2: error: ld returned 1 exit status
openface_ros/CMakeFiles/openface_ros.dir/build.make:195: recipe for target '/home/map479/catkin_ws/devel/lib/openface_ros/openface_ros' failed
make[2]: *** [/home/map479/catkin_ws/devel/lib/openface_ros/openface_ros] Error 1
CMakeFiles/Makefile2:4951: recipe for target 'openface_ros/CMakeFiles/openface_ros.dir/all' failed
make[1]: *** [openface_ros/CMakeFiles/openface_ros.dir/all] Error 2
Makefile:138: recipe for target 'all' failed
make: *** [all] Error 2

```
https://stackoverflow.com/questions/32353509/usr-bin-ld-cannot-find-lopenblas-error-in-caffe-compilation


```
sudo apt-get install liblapack-dev liblapack3 libopenblas-base libopenblas-dev
```       
