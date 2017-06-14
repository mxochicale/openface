OpenFace
---


[Main Source](https://github.com/TadasBaltrusaitis/OpenFace)


# Installation for  Ubuntu 14.04

### Dependencies 
It is suggested that following dependencies have to be installed to
build OpenFace to avoid any dependencies issues in the installation:
* Python 2.7.13  
* OpenCV 3.2
* dlib-19.4

### Installation
```
cd
git clone https://github.com/TadasBaltrusaitis/OpenFace.git
cd OpenFace && mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE ..
make
```

https://github.com/TadasBaltrusaitis/OpenFace/wiki/Unix-Installation



### Testing
```
./FaceLandmarkVid -f "../../videos/changeLighting.wmv"
./FaceLandmarkVidMulti -f  "../../videos/multi_face.avi"
./FaceLandmarkVid -device /dev/video0
./FaceLandmarkVidMulti -device /dev/video0
```

To test <!-- ./bin/FeatureExtraction -rigid -verbose -f "../videos/default.wmv" -of "output_features/default.txt" -simalign output_features/aligned -->
