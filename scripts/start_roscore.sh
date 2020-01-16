# !/bin/bash

# inspired by: https://answers.ros.org/question/140426/issues-launching-ros-on-startup/

LOG_FILE=/home/field/project11/log/log_start_roscore.txt

echo "" >> ${LOG_FILE}
echo "" >> ${LOG_FILE}
echo "" >> ${LOG_FILE}
echo "" >> ${LOG_FILE}
echo "#############################################" >> ${LOG_FILE}
echo "Running start_roscore.sh" >> ${LOG_FILE}
echo $(date) >> ${LOG_FILE}
echo "#############################################" >> ${LOG_FILE}
echo "" >> ${LOG_FILE}
echo "Logs:" >> ${LOG_FILE}

set -e

{

source /opt/ros/melodic/setup.bash
source /home/field/project11/catkin_ws/devel/setup.bash

export ROS_WORKSPACE=/home/field/project11/catkin_ws
export ROS_IP=192.168.100.112

sleep 5

} &>> ${LOG_FILE}

set -v

{

roscore

} &>> ${LOG_FILE}
