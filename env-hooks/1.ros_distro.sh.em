# generated from ros_environment/env-hooks/1.ros_distro.sh.em

@{
# This is a build-time environment variable which allows a build engineer to override the expected
# ROS_DISTRO value for a workspace, for example to deliberately use a newer version of roslib with
# an older release or vice-versa, or to define a custom distro (eg, "ROS Banana").
from os import environ
ROS_DISTRO = environ.get("ROS_DISTRO_OVERRIDE", "TODO")
}@
if [ -n "$ROS_DISTRO" -a "$ROS_DISTRO" != "@(ROS_DISTRO)" ]; then
  echo "ROS_DISTRO was set to '$ROS_DISTRO' before. Please make sure that the environment does not mix paths from different distributions."
fi
export ROS_DISTRO=@(ROS_DISTRO)
