######################
## OpenFace Depencies
##
## https://github.com/TadasBaltrusaitis/OpenFace/wiki/Unix-Installation



##Get newest GCC, done using:
#sudo apt-get update
#sudo apt-get install build-essential
#
##Cmake
#sudo apt-get install cmake
#
##OpenBLAS
#sudo apt-get install libopenblas-dev
#
#
##Get Boost
#sudo apt-get install libboost-all-dev
#
#
##Install OpenCV dependencies:
#sudo apt-get install git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
#sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev
#



#Download OpenCV 3.4.0
cd ~/Downloads
wget https://github.com/opencv/opencv/archive/3.4.0.zip
unzip 3.4.0.zip
cd opencv-3.4.0
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_TIFF=ON -D WITH_TBB=ON -D BUILD_SHARED_LIBS=OFF ..
make -j2
sudo make install







#
##Download and compile dlib:
#cd ~/Downloads
#wget http://dlib.net/files/dlib-19.13.tar.bz2
#tar xf dlib-19.13.tar.bz2
#cd dlib-19.13
#mkdir build
#cd build
#cmake ..
#cmake --build . --config Release
#sudo make install
#sudo ldconfig
#cd ../..
#




