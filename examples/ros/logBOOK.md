LogBOOK
---



# todo 

* [ ] to learn more on how to use rosbag and how to manage your data, 
	i found the following project of https://github.com/skadge


LEARN MORE: https://github.com/freeplay-sandbox


# sorted 


* [x] record a video (and audio if possible) with OpenFace Data using rosbag
	(created:13FEB2015;sorted:?)


	sorted: Tue 11 Dec 13:34:20 GMT 2018

```

T1
roscore

T2
mkdir ~/tmp/rosbag && cd ~/tmp/rosbag
rosbag record -a


T3
rosrun usb_cam usb_cam_node

T4
rosrun openface_ros openface_ros _image_topic:="/usb_cam/image_raw"

```




Play back recording with:
```
rosbag play <bagfile>
rosrun image_view image_view image:=/usb_cam/image_raw
```

https://answers.ros.org/question/129266/how-to-i-rosbagrecord-a-loosless-compressed-images/



rosbag info <bagfile>
```
$ rosbag info 2018-12-11-13-08-43.bag 
path:        2018-12-11-13-08-43.bag
version:     2.0
duration:    41.9s
start:       Dec 11 2018 13:08:43.35 (1544533723.35)
end:         Dec 11 2018 13:09:25.28 (1544533765.28)
size:        483.2 MB
messages:    3986
compression: none [534/534 chunks]
types:       dynamic_reconfigure/Config            [958f16a05573709014982821e6822580]
             dynamic_reconfigure/ConfigDescription [757ce9d44ba8ddd801bb30bc456f946f]
             openface_ros/Faces                    [af59ba00632b47c375fc38e64aa84050]
             rosgraph_msgs/Log                     [acffd30cd6b6de30f120938c17c593fb]
             sensor_msgs/CameraInfo                [c9a58c1b0b154e0e6da7578cb991d214]
             sensor_msgs/CompressedImage           [8f7a12909da2c9d3332d540a0977563f]
             sensor_msgs/Image                     [060021388200f6f0f447d0fcd9c64743]
             tf2_msgs/TFMessage                    [94810edda583a504dfda3829e70d7eec]
             theora_image_transport/Packet         [33ac4e14a7cff32e7e0d65f18bb410f3]
topics:      /faces                                                      357 msgs    : openface_ros/Faces                   
             /rosout                                                     564 msgs    : rosgraph_msgs/Log                     (3 connections)
             /rosout_agg                                                 563 msgs    : rosgraph_msgs/Log                    
             /tf                                                         356 msgs    : tf2_msgs/TFMessage                   
             /usb_cam/camera_info                                        533 msgs    : sensor_msgs/CameraInfo               
             /usb_cam/image_raw                                          534 msgs    : sensor_msgs/Image                    
             /usb_cam/image_raw/compressed                               534 msgs    : sensor_msgs/CompressedImage          
             /usb_cam/image_raw/compressed/parameter_descriptions          1 msg     : dynamic_reconfigure/ConfigDescription
             /usb_cam/image_raw/compressed/parameter_updates               1 msg     : dynamic_reconfigure/Config           
             /usb_cam/image_raw/compressedDepth/parameter_descriptions     1 msg     : dynamic_reconfigure/ConfigDescription
             /usb_cam/image_raw/compressedDepth/parameter_updates          1 msg     : dynamic_reconfigure/Config           
             /usb_cam/image_raw/theora                                   539 msgs    : theora_image_transport/Packet        
             /usb_cam/image_raw/theora/parameter_descriptions              1 msg     : dynamic_reconfigure/ConfigDescription
             /usb_cam/image_raw/theora/parameter_updates                   1 msg     : dynamic_reconfigure/Config

```




* [x] use [rosbag](http://wiki.ros.org/rosbag) for further analysis with [openface_ros](https://github.com/interaction-lab/openface_ros)   
	(created:AUGUST2017;sorted:?)


	sorted: Tue 11 Dec 13:34:50 GMT 2018
