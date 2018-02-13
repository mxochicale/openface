Shell Script
---

```
cd ~/mxochicale/github/openface/examples/collecting-data/shells/
./openface-participantNN.sh pNNgXXaNN
```
ctrl-q to exit from the video recording
and ctrl-c to stop the video loop


By default, it creates this path
```
$ ~/tmp/experimentX/openface/pNNgXXaNN
$ ls -l
flvid.avi #face landmark video
out.avi #raw recorded video
```


To extract the the head pose estimation 
and Action Unit predictions for the videos,
do the following!


```
cd /home/map479/tmp/openday_v02/openface/ p**
~/OpenFace/build/bin/./FeatureExtraction -rigid -verbose -f out.avi -of "default.txt" -simalign aligned
```
