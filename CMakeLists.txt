cmake_minimum_required(VERSION 3.8)
project(face_msgs)

# Default to C++17
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

################################################
## Find  dependencies                         ##
################################################
## Find ament macros and libraries
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(vision_msgs REQUIRED)

################################################
## Declare ROS messages, services and actions ##
################################################
set(msg_files
  "msg/Face.msg"
  "msg/FaceArray.msg"
)
set(srv_files
  "srv/Authenticate.srv"
  "srv/DeviceInfo.srv"
  "srv/Enroll.srv"
  "srv/RemoveUser.srv"
  "srv/RemoveAllUsers.srv"
  "srv/QueryUsersId.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  DEPENDENCIES std_msgs vision_msgs
)

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

###################################
## ament specific configuration ##
###################################
ament_export_dependencies(rosidl_default_runtime)

###########
## Build ##
###########

#############
## Install ##
#############

#############
## Testing ##
#############
if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()