# MEM-Boat
This repo is for the MEM boat project, all the rights are reserved by ERI@N Wind & Marine team.

The following comments are some description of this repo distribution and the precudures to manipulate
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

# How to activate and use these packages for real life test.
1. Make sure the MEM boat and you workstation PC are connected to the wifi station, where I've set the different static IPs
for the onboard pc and workstation pc in order to to recoganize each others in the wifi.

workstation PC: 192.168.0.102
onboard PC: 192.168.0.103

To make sure they can connect each other, run the command in your workstation PC command line:
ping 192.168.0.103, wait for a few seconds you can get the information for they message transmission.

2. To make sure you workstation and onboard pc has the same clock in order to transfer the message correctly. Run the command 
in your workstation.
ntpdate -q 192.168.0.103, would provide you the time leg between your workstation pc and the onboard pc, then run 
ntpdate 192.168.0.103, would force the clock on your workstation PC to be exactly the same with the one on onboart PC.

3. TO check whether the ros on the defferent PCs can recognize each other, run the command:
rostopic list, will list all the rostopic available on the ros.

# The main steps for testing
4. The following steps are about the programs needed to run for the real life test after setup the wifi and power on the MEM boat
  ping 192.168.0.103, to check both of the computers are on the same wifi
  rostopic list, to check the ros can communicate with each other
  ntqdate 192.168.0.103, to sychronize the clocks
  
   
    On you workstation PC:
    1) roslaunch heron_nav move_base_heron.launch
    This will activate the lunch file where all the sensors are activated, the navigation package (move_base) are working
    the gazebo and RVIZ software are fired.
    
    2) open another terminal, rosrun kingfisher_controller kingfisher_twist_control
    This will activate the PID controller which takes the twist message as input and Drive ad output, more specifically
    from (linear.x,angular.z) to (left,right)
    
    3) Give the control command, run the follwing command in your workstation PC terminal
    rostopic pub -r 6 cmd_vel geometry_msgs/Twist "[1.0,0,0]" "[0,0,0]"
    for the message, [1.0,0,0] means the linear.x = 1.0 (in meter), linear.y = linear.z = 0 since we only care about the forward and
    backward speed.
    [0,0,0] means the angular.x = angular.y = angular.z = 0 (in radian), in that case we can finish the linear speed PID tuning without 
    input the angular speed command. After we finish the linear one, then can try to tune the PID controller with the follo-
    wing command.
    rostopic pub -r 6 cmd_vel geometry_msgs/Twist "[0,0,0]" "[0,0,0.5]" which will drive the boat in circle rounds.
    
    4) another terminal, rqt_plot
    After you give the speed command, you can observe the feedback information through the rqt_plot window.
    This will plot what you want to observe in a figure, for us, here we plot the message about 
    odometry/global/twist/twist/linear.x and odometry/global/twist/twist/angular.z which is the feedback information
    for our performance evaluation of the PID controller.
    
    5) new terminal, rosrun rqt_reconfigure rqt_reconfigure
    This command would fire the PID parameter tuning board, where the p,i,d parameters for the linear and yaw are provided.
    we can tune these parameters then observe the performance in the rqt_plot window.
    Keeping tuning the PID for linear and angular seperately till the performance meets our request.



