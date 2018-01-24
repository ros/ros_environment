cmake_minimum_required(VERSION 2.8.3)
project(ros_environment)
find_package(catkin REQUIRED)

catkin_package()

if(CMAKE_HOST_UNIX)
  set(shells "sh")
else()
  set(shells "bat")
endif()

set(
  hooks
  "1.ros_distro"
  "1.ros_version"
)
foreach(hook ${hooks})
  catkin_add_env_hooks("${hook}" SHELLS ${shells} DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/env-hooks)
endforeach()
