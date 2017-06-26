Collecting Data with OpenFace
---

# TODO
* create a shell script to run the scripts per participant and trial

# Simple Example

```
cd ~/OpenFace/build/bin
mkdir testing && cd testing
.././Record   #[Q to exit]
.././FaceLandmarkVid -f ../testing/out.avi -ov "flvid.avi"
.././FeatureExtraction -rigid -verbose -f ../testing/out.avi -of "default.txt" -simalign ../testing/aligned
```


# For different trials

test01
```
cd ~/OpenFace/build/bin
mkdir haip01t01 && cd haip01t01
.././Record
cd ..
```


.././FaceLandmarkVid -f ../haip01t01/out.avi -ov "flvid.avi"
.././FeatureExtraction -rigid -verbose -f ../haip01t01/out.avi -of "default.txt" -simalign ../haip01t01/aligned



test02
```
cd ~/OpenFace/build/bin
mkdir haip01t02 && cd haip01t02
.././Record
cd ..
```
.././FaceLandmarkVid -f ../haip01t02/out.avi -ov "flvid.avi"
.././FeatureExtraction -rigid -verbose -f ../haip01t02/out.avi -of "default.txt" -simalign ../haip01t02/aligned
