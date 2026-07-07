# face_msgs

![ROS2](https://img.shields.io/badge/ros2-jazzy-blue?logo=ros&logoColor=white)
![License](https://img.shields.io/github/license/grupo-avispa/face_msgs)
[![Build](https://github.com/grupo-avispa/face_msgs/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/grupo-avispa/face_msgs/actions/workflows/build.yml)

## Overview
This package provides messages and services relating to face recognition.

## Messages (.msg)
* [Face](msg/Face.msg): Describes a face.
* [FaceArray](msg/FaceArray.msg): Describes an array of faces.

## Services (.srv)
* [Authenticate](srv/Authenticate.srv): Request to authenticate a user.
* [DeviceInfo](srv/DeviceInfo.srv): Request to get the device information.
* [Enroll](srv/Enroll.srv): Request to enroll a user.
* [RemoveUser](srv/RemoveUser.srv): Request to remove a user.
* [RemoveAllUsers](srv/RemoveAllUsers.srv): Request to remove all users.
* [QueryUsersId](srv/QueryUsersId.srv): Request to query all users' id.