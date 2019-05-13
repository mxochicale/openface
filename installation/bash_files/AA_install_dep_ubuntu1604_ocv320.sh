######################
## OpenFace Depencies
##
## https://github.com/mxochicale/openface/blob/master/installation/INSTALLATION_Ubuntu16.04_desktop_machine.m://github.com/mxochicale/openface/blob/master/installation/INSTALLATION_Ubuntu16.04_desktop_machine.md



sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libgtk-3-dev
sudo apt-get install libatlas-base-dev gfortran
sudo apt-get install libtbb-dev
sudo apt-get install liblapacke-dev


##OpenBLAS
sudo apt-get install libopenblas-dev

##Get Boost
sudo apt-get install libboost-all-dev


wget -O opencv.zip https://github.com/opencv/opencv/archive/3.2.0.zip && unzip opencv.zip && rm opencv.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.2.0.zip && unzip opencv_contrib.zip && rm opencv_contrib.zip

cd ~/opencv-3.2.0/ && mkdir build && cd build


cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_C_EXAMPLES=OFF \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.2.0/modules \
	-D PYTHON_EXECUTABLE=/usr/bin/python \
	-D WITH_JPEG=OFF \
	-D BUILD_EXAMPLES=OFF ..


# Assuming that OpenCV compiled without error, 
# you can test it and then install it on your Ubuntu system:


make -j2
cd bin/
sudo make install
sudo ldconfig












#Download and compile dlib:
cd ~/Downloads
wget http://dlib.net/files/dlib-19.13.tar.bz2
tar xf dlib-19.13.tar.bz2
cd dlib-19.13 && mkdir build && cd build
cmake ..
cmake --build . --config Release
sudo make install
sudo ldconfig
cd ../..





