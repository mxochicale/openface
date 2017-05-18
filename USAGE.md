OpenFace Usage
---

#On Ubuntu 16.04

https://github.com/TadasBaltrusaitis/OpenFace/wiki/Command-line-arguments

```
./FaceLandmarkVid -device "/dev/video0" -ov "output_features/test.avi"
```
-ov <location of visualized track> where to output video file with tracked landmarks

[For more command line arguments](https://github.com/TadasBaltrusaitis/OpenFace/wiki/Command-line-arguments)

* vlc has been installed [on Ubuntu 16.04](https://github.com/mxochicale/MyCollectionOfScientificTools/tree/master/vlc#on--ubuntu-1604)
to watch the videos




## Feature Extraction

```
./FeatureExtraction -rigid -verbose -f "../../samples/default.wmv" -of "output_features/default.txt" -simalign output_features/aligned
```


##### My test
* Capture Video
```
./FaceLandmarkVid -device "/dev/video0" -ov "output_videocapture/p01.avi"
```

* Extract Features
```
./FeatureExtraction -rigid -verbose -f "output_videocapture/p01.avi" -of "output_videocapture/default.txt" -simalign output_videocapture/aligned
```

When extracting features in this way, a double face pose estimator is presented
which is not a good example on how this exmaple should work. Therefore, the
library has been built with the record option in order to record clean videos
to be then used for the Feature Extraction Algorithm


#####  Recording Video

CMakeList.txt is added to the \exe\Recording\
```
#TBB library
include_directories(${TBB_ROOT_DIR}/include)
add_executable(Record Record.cpp)
target_link_libraries(Record ${OpenCV_LIBS} ${Boost_LIBRARIES} ${TBB_LIBRARIES})
install (TARGETS Record DESTINATION bin)
```
then
"add_subdirectory(exe/Recording)" is added to CMakeList.txt

This app is for windows to which, the following bugs have appeared.

```
[ 98%] Building CXX object exe/Recording/CMakeFiles/Record.dir/Record.cpp.o
/home/map479/OpenFace/exe/Recording/Record.cpp:42:21: fatal error: windows.h: No such file or directory
compilation terminated.
```
comment //#include <windows.h> on Record.cpp



Then, after some quick google search, a simple app was implemented to capture video.
codecs play an importan role when recroding video for the data analysis, becarful with
the codec that you use. For this experiment,
CV_FOURCC'H','2','6','4'),and CV_FOURCC('D','I','V','X') work well.



This is the  new  Record.cpp
```
// http://stackoverflow.com/questions/24195926/opencv-write-webcam-output-to-avi-file

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
#include "opencv2/highgui/highgui.hpp"
#include <iostream>

using namespace cv;
using namespace std;

int main(int argc, char* argv[])
{
   VideoCapture cap(0); // open the video camera no. 0

   if (!cap.isOpened())  // if not success, exit program
   {
       cout << "Cannot open the video cam" << endl;
       return -1;
   }

  double dWidth = cap.get(CV_CAP_PROP_FRAME_WIDTH); //get the width of frames of the video
  double dHeight = cap.get(CV_CAP_PROP_FRAME_HEIGHT); //get the height of frames of the video

   cout << "Frame size : " << dWidth << " x " << dHeight << endl;

   namedWindow("MyVideo",CV_WINDOW_AUTOSIZE); //create a window called "MyVideo"

   //VideoWriter oVideoWriter ("MyVideo.avi", CV_FOURCC('P','I','M','1'), 20, frameSize, true); //initialize the VideoWriter object
  //  VideoWriter oVideoWriter("out.avi",CV_FOURCC('M','J','P','G'),30, Size(dWidth,dHeight),true);
  //  VideoWriter oVideoWriter("out.avi",CV_FOURCC('H','2','6','4'),30, Size(dWidth,dHeight),true);
   VideoWriter oVideoWriter("out.avi",CV_FOURCC('D','I','V','X'),30, Size(dWidth,dHeight),true);

  if ( !oVideoWriter.isOpened() ) //if not initialize the VideoWriter successfully, exit the program
  {
       cout << "ERROR: Failed to write the video" << endl;
       return -1;
  }

   while (1)
   {
       Mat frame;

       bool bSuccess = cap.read(frame); // read a new frame from video

       if (!bSuccess) //if not success, break loop
       {
            cout << "Cannot read a frame from video stream" << endl;
            break;
       }

       oVideoWriter.write(frame); //writer the frame into the file
       imshow("MyVideo", frame); //show the frame in "MyVideo" window

       if (waitKey(30) == 27) //wait for 'esc' key press for 30ms. If 'esc' key is pressed, break loop
      {
           cout << "esc key is pressed by user" << endl;
           break;
      }
   }
   return 0;

}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

```


Then, you can record videos and extract features.


in bin

```
./Record
```
to create out.avi and press ESC to finish the recording.
Then, for the feature extraction run:
```
./FeatureExtraction -rigid -verbose -f "out.avi" -of "output_videocapture/default.txt" -simalign output_videocapture/aligned
```
