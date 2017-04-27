OpenFace
---



https://github.com/TadasBaltrusaitis/OpenFace


# Installation Ubuntu 14.04

```
cd
git clone https://github.com/TadasBaltrusaitis/OpenFace.git
cd OpenFace && mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE ..
make
```

https://github.com/TadasBaltrusaitis/OpenFace/wiki/Unix-Installation




Test it with
```
./FaceLandmarkVid -f "../../videos/changeLighting.wmv"
./FaceLandmarkVidMulti -f  "../../videos/multi_face.avi"
./FaceLandmarkVid -device /dev/video0
./FaceLandmarkVidMulti -device /dev/video0
```

<!-- ./bin/FeatureExtraction -rigid -verbose -f "../videos/default.wmv" -of "output_features/default.txt" -simalign output_features/aligned -->
