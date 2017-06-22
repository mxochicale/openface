Collecting Data with OpenFace
---

# TODO
* create a shell script to run the scripts per participant and trial

# Simple Example

```
cd ~/OpenFace/build/bin
mkdir testing && cd testing
.././Record   [q to exit]
.././FaceLandmarkVid -f ../testing/out.avi -ov "flvid.avi"
.././FeatureExtraction -rigid -verbose -f ../testing/out.avi -of "default.txt" -simalign ../testing/aligned
```


# For Experiments

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


test03
```
cd ~/OpenFace/build/bin
mkdir haip01t03 && cd haip01t03
.././Record
cd ..
```
.././FaceLandmarkVid -f ../haip01t03/out.avi -ov "flvid.avi"
.././FeatureExtraction -rigid -verbose -f ../haip01t03/out.avi -of "default.txt" -simalign ../haip01t03/aligned


test04
```
cd ~/OpenFace/build/bin
mkdir haip01t04 && cd haip01t04
.././Record
cd ..
```
.././FaceLandmarkVid -f ../haip01t04/out.avi -ov "flvid.avi"
.././FeatureExtraction -rigid -verbose -f ../haip01t04/out.avi -of "default.txt" -simalign ../haip01t04/aligned



test05
```
cd ~/OpenFace/build/bin
mkdir haip01t05 && cd haip01t05
.././Record
cd ..
```
.././FaceLandmarkVid -f ../haip01t05/out.avi -ov "flvid.avi"
.././FeatureExtraction -rigid -verbose -f ../haip01t05/out.avi -of "default.txt" -simalign ../haip01t05/aligned



test06
```
cd ~/OpenFace/build/bin
mkdir haip01t06 && cd haip01t06
.././Record
cd ..
```
.././FaceLandmarkVid -f ../haip01t06/out.avi -ov "flvid.avi"
.././FeatureExtraction -rigid -verbose -f ../haip01t06/out.avi -of "default.txt" -simalign ../haip01t06/aligned
