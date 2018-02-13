#!/bin/bash

pNNgXXaNN=$1

mainpath=experimentX
openfacePath=openface
echo "Participant $pNNgXXaNN"

cd ~/tmp/
mkdir -p $mainpath/$openfacePath/$pNNgXXaNN
cd ~/tmp/$mainpath/$openfacePath/$pNNgXXaNN

~/OpenFace/build/bin/./Record    #[Q to exit]
~/OpenFace/build/bin/./FaceLandmarkVid -f out.avi -ov "flvid.avi"

# Play the FaceLandmarkVideo
cvlc --loop --fullscreen flvid.avi
# to stop the video press 'crtl-c' in the terminal


# This is for later user
# ~/OpenFace/build/bin/./FeatureExtraction -rigid -verbose -f out.avi -of "default.txt" -simalign aligned
