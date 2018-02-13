Using Images with OpenFace
---


Some failed experiments using images

```
cd ~/OpenFace/build/bin
```

copy and paste
~/mxochicale/github/openface/examples/Images to ~/OpenFace/build/bin

and then work



```
$./FaceLandmarkImg -f "Images/exercise.jpg" -oi "Images/out.jpg"
```

```
$./FaceLandmarkImg -f "Images/zora.jpg" -oi "Images/out.jpg"
```

```
$./FaceLandmarkImg -f "Images/robocoach.jpg" -oi "Images/out.jpg"
Loading the model
Reading the CLNF landmark detector/tracker from: model/main_clnf_general.txt
Reading the landmark detector module from: model/clnf_general.txt
Reading the PDM module from: model/pdms/In-the-wild_aligned_PDM_68.txt....Done
Reading the Triangulations module from: model/tris_68.txt....Done
Reading the intensity CCNF patch experts from: model/patch_experts/ccnf_patches_0.25_general.txt....Done
Reading the intensity CCNF patch experts from: model/patch_experts/ccnf_patches_0.35_general.txt....Done
Reading the intensity CCNF patch experts from: model/patch_experts/ccnf_patches_0.5_general.txt....Done
Reading part based module....inner
Reading the CLNF landmark detector/tracker from: model/model_inner/main_clnf_inner.txt
Reading the landmark detector module from: model/model_inner/clnf_inner.txt
Reading the PDM module from: model/model_inner/pdms/pdm_51_inner.txt....Done
Reading the intensity CCNF patch experts from: model/model_inner/patch_experts/ccnf_patches_1.00_inner.txt....Done
Done
Reading part based module....left_eye_28
Reading the CLNF landmark detector/tracker from: model/model_eye/main_clnf_synth_left.txt
Reading the landmark detector module from: model/model_eye/clnf_left_synth.txt
Reading the PDM module from: model/model_eye/pdms/pdm_28_l_eye_3D_closed.txt....Done
Reading the intensity CCNF patch experts from: model/model_eye/patch_experts/left_ccnf_patches_1.00_synth_lid_.txt....Done
Reading the intensity CCNF patch experts from: model/model_eye/patch_experts/left_ccnf_patches_1.50_synth_lid_.txt....Done
Done
Reading part based module....right_eye_28
Reading the CLNF landmark detector/tracker from: model/model_eye/main_clnf_synth_right.txt
Reading the landmark detector module from: model/model_eye/clnf_right_synth.txt
Reading the PDM module from: model/model_eye/pdms/pdm_28_eye_3D_closed.txt....Done
Reading the intensity CCNF patch experts from: model/model_eye/patch_experts/ccnf_patches_1.00_synth_lid_.txt....Done
Reading the intensity CCNF patch experts from: model/model_eye/patch_experts/ccnf_patches_1.50_synth_lid_.txt....Done
Done
Reading the landmark validation module....Done
Model loaded
Could not read the input image
```
