#################################
## Actual OpenFace installation
##
## https://github.com/TadasBaltrusaitis/OpenFace/wiki/Unix-Installation#actual-openface-installation
## https://github.com/TadasBaltrusaitis/OpenFace/pull/51://github.com/TadasBaltrusaitis/OpenFace/pull/511

cd $HOME/hri


## OpenFace with OpenCV4
## git clone https://github.com/TadasBaltrusaitis/OpenFace/tree/feature/opencv4

git clone https://github.com/TadasBaltrusaitis/OpenFace.git
git checkout feature/opencv4
# or #git clone -b feature/opencv4 https://github.com/TadasBaltrusaitis/OpenFace.git

cd OpenFace && mkdir -p build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE CMAKE_CXX_FLAGS="-std=c++11" -D CMAKE_EXE_LINKER_FLAGS="-std=c++11" .. 
make


# patch expert files required for the CE-CLM algorithm
cd $HOME/hri/OpenFace/build/bin/model/patch_experts 
wget https://www.dropbox.com/sh/o8g1530jle17spa/AACwK0t-CX1lAJoOAnjHcNiYa/cen_patches_0.25_of.dat
wget https://www.dropbox.com/sh/o8g1530jle17spa/AADl7Ubd2T6UTUXaQVjrLWswa/cen_patches_0.35_of.dat
wget https://www.dropbox.com/sh/o8g1530jle17spa/AACdS_lkcAhwDghZVq3MgMcza/cen_patches_0.50_of.dat
wget https://www.dropbox.com/sh/o8g1530jle17spa/AABis9pvPp-cKI10u6McOL8-a/cen_patches_1.00_of.dat



#
### TEST
#
#```
#cd $HOME/hri/OpenFace/build/bin 
#./FaceLandmarkVid -f "../../samples/changeLighting.wmv"
#./FaceLandmarkVidMulti -f  "../../samples/multi_face.avi"
#```
#
#* From the webcam. To exit, press Q key
#```
#./FaceLandmarkVid -device /dev/video0
#./FaceLandmarkVidMulti -device /dev/video0
#```
#
#
#
