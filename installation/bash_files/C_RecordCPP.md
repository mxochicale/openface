

#####  Recording Video


* install vlc

```
## https://www.omgubuntu.co.uk/2016/06/install-vlc-3-0-ubuntu
sudo add-apt-repository ppa:videolan/master-daily
sudo apt install vlc
```



* add "\exe\Recording\Record.cpp" in CMakeLists.txt

`$HOME/hri/OpenFace/CMakeLists.txt`

```
# executables
add_subdirectory(exe/FaceLandmarkImg)
add_subdirectory(exe/FaceLandmarkVid)
add_subdirectory(exe/FaceLandmarkVidMulti)
add_subdirectory(exe/FeatureExtraction)
add_subdirectory(exe/Recording)

```


cd $HOME/hri/OpenFace/exe/Recording 
cp Record.cpp Record_original.cpp

Recording.cpp with for openCV 4.1.0
```

// https://docs.opencv.org/4.1.0/df/d94/samples_2cpp_2videowriter_basic_8cpp-example.html#a8
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
#include <opencv2/core.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/highgui.hpp>
#include <iostream>
#include <stdio.h>
using namespace cv;
using namespace std;


int main(int argc, char**)
{
    Mat src;
    // use default camera as video source
    VideoCapture cap(0);
    // check if we succeeded
    if (!cap.isOpened()) {
        cerr << "ERROR! Unable to open camera\n";
        return -1;
    }
    // get one frame from camera to know frame size and type
    cap >> src;
    // check if we succeeded
    if (src.empty()) {
        cerr << "ERROR! blank frame grabbed\n";
        return -1;
    }
    bool isColor = (src.type() == CV_8UC3);
    //--- INITIALIZE VIDEOWRITER
    VideoWriter writer;
    int codec = VideoWriter::fourcc('M', 'J', 'P', 'G');  // select desired codec (must be available at runtime)
    double fps = 20.0;                          // framerate of the created video stream
    string filename = "./live.avi";             // name of the output video file
    writer.open(filename, codec, fps, src.size(), isColor);
    // check if we succeeded
    if (!writer.isOpened()) {
        cerr << "Could not open the output video file for write\n";
        return -1;
    }
    //--- GRAB AND WRITE LOOP
    cout << "Writing videofile: " << filename << endl
         << "Press any key to terminate" << endl;
    for (;;)
    {
        // check if we succeeded
        if (!cap.read(src)) {
            cerr << "ERROR! blank frame grabbed\n";
            break;
        }
        // encode the frame into the videofile stream
        writer.write(src);
        // show live and wait for a key with timeout long enough to show images
        imshow("Live", src);
        if (waitKey(5) >= 0)
            break;
    }
    // the videofile will be closed and released automatically in VideoWriter destructor
    return 0;



}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////







```



cd $HOME/hri/OpenFace/exe/Recording 



```
vim CMakeLists.txt
```

```
## Local libraries
include_directories(${LandmarkDetector_SOURCE_DIR}/include)

add_executable(Recording Record.cpp)
target_link_libraries(Recording LandmarkDetector)
target_link_libraries(Recording FaceAnalyser)
target_link_libraries(Recording GazeAnalyser)
target_link_libraries(Recording Utilities)

install (TARGETS Recording DESTINATION bin)

```




re-build OpenFace

```
cd $HOME/hri/OpenFace/build
make
```

Then, you can record videos and extract features.


in /build/bin path

```
./Recording
```
to create `live.avi` and press Q key to finish the recording.
Then, for the feature extraction run:



Play the FaceLandmarkVideo
```
cvlc --play-and-exit flvid.avi
```



