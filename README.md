# MEM-Boat
This repo is for the MEM boat project, all the rights are reserved by ERI@N Wind & Marine team.

The following comments are some descriptions of this repo distribution and the precudures to manipulate
the MEM-boat especially useful for the real life testing.

# Operating system and ROS requirement
OS: Ubuntu 12.04 which is alongside with the MEM boat

ROS: Hydro version

# Copy the repo to you current directory in your ubuntu system
git clone https://github.com/Wenmingxing/MEM-Boat

Create the workspace and copy the all the files excluding the Makefiles.txt in this repo to your workspace 
then cmake them according to the ros tutorials provided in the ros website.

# Description about the software
cd into the src directory, you will see a lot of sub-dirs including LMS1XX,heron,etc.However, for the real life
testing usage, the heron_nav and kingfisher_control packages will be enough for us.

heron_nav includes all the lunch files which are needed for our testing, the kingfisher_control package would provide 
us the PID controller for the navigation performance.

For more details about all the subdirectories.

1)LMS1xx: the lidar scanner for obstacle detection and avoidance.

2)heron: the MEM boat model building through the ROS description.

3)heron_controller: PID controller for the different topics.We can use kingfisher_control to replace it.

4)heron_nav: This is the main package where all the necessary functions are included, such as localization, navigation and 
waypoint control. Furthermore, the RVIZ visualization about MEM boat is also fired in heron_nav.

5)heron_robot: the configuration for the MEM boat.

6)kingfisher_control: the PID controller for our real life testing(kingfisher_twist_control)

7)ntu10_heron: Here we include the external IMU sensor for the model

8)robot_upstart: This is a package where we can set the default function which will be activated through the poweron of the boat.

9)robotx_control: This is a seperate directory for the localization, since we replace the original robot_pose-ekf with the robot_localization, some configuration files are also included here

10)robot_sensor: This is a directory about the sensors including gps and IMU

11)um6:It is the driver for the um6_imu 

12)using_markers: This is a package which I designed for easily evaluating the performance of the waypoint function.

# How to activate and use these packages for real life test.

1. Make sure the MEM boat and you workstation PC are connected to the wifi station, where I've set the different static IPs
for the onboard pc and workstation pc in order to to recoganize each others in the wifi.

workstation PC: 192.168.0.102
onboard PC: 192.168.0.103

To make sure they can connect each other, run the command in your workstation PC command line:
ping 192.168.0.103, wait for a few seconds you can get the information for they message transmission.

2. To make sure you workstation and onboard pc has the same clock in order to transfer the message correctly. Run the      command in your workstation.
ntpdate -q 192.168.0.103, would provide you the time leg between your workstation pc and the onboard pc, then run 
ntpdate 192.168.0.103, would force the clock on your workstation PC to be exactly the same with the one on onboart PC.

3. TO check whether the ros on the defferent PCs can recognize each other, run the command:
rostopic list, will list all the rostopic available on the ros.

# The main steps for testing

4. The following steps are about the programs needed to run for the real life test after setup the wifi and power on the 
MEM boat
  ping 192.168.0.103, to check both of the computers are on the same wifi
  rostopic list, to check the ros can communicate with each other
  ntqdate 192.168.0.103, to sychronize the clocks
  
    On you workstation PC:
    
    1) roslaunch heron_nav move_base_heron.launch
    
    This will activate the lunch file where all the sensors are activated, the navigation package (move_base) are 
    working
    the gazebo and RVIZ software are fired.
    
    2) open another terminal, rosrun kingfisher_controller kingfisher_twist_control.py
    
    This will activate the PID controller which takes the twist message as input and Drive ad output, more specifically
    from (linear.x,angular.z) to (left,right)
    
    3) Give the control command, run the follwing command in your workstation PC terminal
    
    rostopic pub -r 6 cmd_vel geometry_msgs/Twist "[1.0,0,0]" "[0,0,0]"
    
    for the message, [1.0,0,0] means the linear.x = 1.0 (in meter), linear.y = linear.z = 0 since we only care about the 
    forward and
    backward speed.
    [0,0,0] means the angular.x = angular.y = angular.z = 0 (in radian), in that case we can finish the linear speed PID  
    tuning without 
    input the angular speed command. After we finish the linear one, then can try to tune the PID controller with the 
    follo-wing command.
    rostopic pub -r 6 cmd_vel geometry_msgs/Twist "[0,0,0]" "[0,0,0.5]" which will drive the boat in circle rounds.
    
    4) another terminal, rqt_plot
    
    After you give the speed command, you can observe the feedback information through the rqt_plot window.
    This will plot what you want to observe in a figure, for us, here we plot the message about 
    odometry/global/twist/twist/linear.x and odometry/global/twist/twist/angular.z which is the feedback information
    for our performance evaluation of the PID controller.
    
    5) new terminal, rosrun rqt_reconfigure rqt_reconfigure
    
    This command would fire the PID parameter tuning board, where the p,i,d parameters for the linear and yaw are 
    provided.
    we can tune these parameters then observe the performance in the rqt_plot window.
    Keeping tuning the PID for linear and angular seperately till the performance meets our request.

5. Record the data during the boat are driving.

    rosbag record -O record.bag -a

    this command will record all the topics on the MEM boat, and store them in a bag file names record.bag.

6. Replay the recorded data and plot it in the computer. Before that you need run: roscore in a new terminal, if it does not work, go-into the .bashrc file and comment the last two lines.(export ...)

    1) rosbag play -l record.bag
    Command will replay all the recorded data in your computer
  
    2) rosrun heron_nav spot_depth
    The spot_depth dunction will subscribe the depth and GPS information and publish a new topic names /spot_depth
  
    3) rostopic echo -p /spot_depth > data.txt
    This command will print all the message inside the /spot_depth topic to a txt file named data.txt
  
    4) modify the data.txt file
    Open the data.txt file, and delete the first line of this file.
  
    5) In you new terminal, python 3d_plot_python.py
    This program will read the data.txt file and plot all the data inside as a 3D figure.
  
    6) You can use the kazam Screencaster for taking a video for a specific area.



