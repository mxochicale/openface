[OpenFace for ROS](https://github.com/interaction-lab/openface_ros)
---




# TESTING

## Terminal 1
```
roscore
```

## Terminal 2
```
rosrun usb_cam usb_cam_node
```

## Terminal 3
```
rosrun openface_ros openface_ros _image_topic:="/usb_cam/image_raw"
```

## Terminal 4
```
$ rosnode list
/openface_ros
/rosout
/usb_cam
```

```
$ rostopic list
/faces
/rosout
/rosout_agg
/tf
/usb_cam/camera_info
/usb_cam/image_raw
/usb_cam/image_raw/compressed
/usb_cam/image_raw/compressed/parameter_descriptions
/usb_cam/image_raw/compressed/parameter_updates
/usb_cam/image_raw/compressedDepth
/usb_cam/image_raw/compressedDepth/parameter_descriptions
/usb_cam/image_raw/compressedDepth/parameter_updates
/usb_cam/image_raw/theora
/usb_cam/image_raw/theora/parameter_descriptions
/usb_cam/image_raw/theora/parameter_updates
```

```
rostopic echo /faces
```




## messages


### ActionUnit
```
$ rosmsg show openface_ros/ActionUnit 


string name
float64 presence
float64 intensity
```

### Face

```
$ rosmsg show openface_ros/Face


std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
geometry_msgs/Vector3 left_gaze
  float64 x
  float64 y
  float64 z
geometry_msgs/Vector3 right_gaze
  float64 x
  float64 y
  float64 z
geometry_msgs/Pose head_pose
  geometry_msgs/Point position
    float64 x
    float64 y
    float64 z
  geometry_msgs/Quaternion orientation
    float64 x
    float64 y
    float64 z
    float64 w
geometry_msgs/Point[] landmarks_3d
  float64 x
  float64 y
  float64 z
geometry_msgs/Point[] landmarks_2d
  float64 x
  float64 y
  float64 z
openface_ros/ActionUnit[] action_units
  string name
  float64 presence
  float64 intensity

```


### Faces

```
$ rosmsg show openface_ros/Faces


openface_ros/Face[] faces
  std_msgs/Header header
    uint32 seq
    time stamp
    string frame_id
  geometry_msgs/Vector3 left_gaze
    float64 x
    float64 y
    float64 z
  geometry_msgs/Vector3 right_gaze
    float64 x
    float64 y
    float64 z
  geometry_msgs/Pose head_pose
    geometry_msgs/Point position
      float64 x
      float64 y
      float64 z
    geometry_msgs/Quaternion orientation
      float64 x
      float64 y
      float64 z
      float64 w
  geometry_msgs/Point[] landmarks_3d
    float64 x
    float64 y
    float64 z
  geometry_msgs/Point[] landmarks_2d
    float64 x
    float64 y
    float64 z
  openface_ros/ActionUnit[] action_units
    string name
    float64 presence
    float64 intensity

```


