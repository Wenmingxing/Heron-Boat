/*
Coded by Luke Wen on 16th, June 2017
Aiming to design a PID controller for linear and angular speed from move_base.

The command is Twist, going through a PID controller then to control the Drive messege (right and left between -1 and 1) of the MEM boat, the feedback signal is the odometry information
fused based on both IMU and GPS.
*/

#include<ros/ros.h>

#include<geometry_msgs/Twist.h>
#include<nav_msgs/Odometry.h>
#include<heron_msgs/Drive.h>

#include<dynamic_reconfigure/server.h>
#include<heron_controller/pidConfig.h>

#include<iostream>
#include<cmath>

using namespace std;

//Define the global variables for the system
double linear_setpoint,linear_feedback,angular_setpoint,angular_feedback;
// The PID parameters for the linear and angular, the reason why define them as the global varibles is we want them to refer to the dynamic configuration parameters
double linear_p,linear_i,linear_d,angular_p,angular_i,angular_d;
// The callback for the dynamic configuration for the PID controller.
void callback(heron_controller::pidConfig &config)
{
	ROS_INFO("Reconfigure Request For PID parameters.");
	linear_p = config.linear_p;
	linear_i = config.linear_i;
	linear_d = config.linear_d;
	angular_p = config.angular_p;
	angular_i = config.angular_i;
	angular_d = config.angular_d;

}

// Define a PID class for the future usage
class PIDController
{
	public: 
	PIDController();
	~PIDController();
	void calculate();
	void Display();
	private:
	ros::NodeHandle n;
	double linear_P;
	double linear_I;
	double linear_D;
	double angular_P;
	double angular_I;
	double angular_D;
	ros::Time prev_time;
	ros::Time now;
	//ros::Time start_time;
	//float error;
	double linear_prev_error;
	double angular_prev_error; 
	double linear_integral;
	double angular_integral;
	
	ros::Subscriber twist_sub;
	ros::Subscriber odom_sub;
	ros::Publisher drive_pub;
	void OdomCallback(const nav_msgs::Odometry::ConstPtr& msg);
	void TwistCallback(const geometry_msgs::Twist::ConstPtr& msg);
	

};


// Implementation the construcator for PIDController class where initialization is finished, the private variables are initializaed in list
PIDController::PIDController():linear_prev_error(0),angular_prev_error(0),linear_integral(0),angular_integral(0),prev_time(ros::Time::now()),now(ros::Time::now())
{
	
	//now = ros::Time::now();
	//prev_time = ros::Time::now();
	twist_sub = n.subscribe<geometry_msgs::Twist>("cmd_vel",10,&PIDController::TwistCallback,this);
	odom_sub = n.subscribe<nav_msgs::Odometry>("odom_combined",10,&PIDController::OdomCallback,this);
	drive_pub = n.advertise<heron_msgs::Drive>("cmd_drive",10);
}


// Define the odomcallback function
void PIDController::OdomCallback(const nav_msgs::Odometry::ConstPtr& msg)
{
	linear_feedback = msg->twist.twist.linear.x;
	angular_feedback = msg->twist.twist.angular.z;	

}


//Define the twistcallback function
void PIDController::TwistCallback(const geometry_msgs::Twist::ConstPtr& msg)
{
	linear_setpoint = msg->linear.x;
	angular_setpoint = msg->angular.z;
}

// Define the destructor for the class
PIDController::~PIDController()
{
 cout<<"Destructor for the PID controller."<<endl;
}
//Define the PID calculate function which can produce the Drive message to controll the MEM boat. 
void PIDController::calculate()
{	
 
	linear_P = linear_p; 
	linear_I = linear_i; 
	linear_D = linear_d;
  	angular_P = angular_p;
	angular_I = angular_i;
	angular_D = angular_d;
    	// The time interval for measurments
	now = ros::Time::now();
	double delta_t = (now - prev_time).toSec();
	
	// For the linear_pid  
	// calculate the error
	double linear_error = linear_setpoint - linear_feedback;
	
	// Proportional term
	double linear_Pout = linear_P * linear_error;
	
	// Intergral term
	linear_integral += linear_error * delta_t;
	double linear_Iout = linear_I * linear_integral;

	// Derivative term
	double linear_derivative = (linear_error - linear_prev_error) / delta_t;
	double linear_Dout = linear_D * linear_derivative;
	// Calculate total output
	double linear_output = linear_Pout + linear_Iout + linear_Dout;
	
	
	// For the angular pid
	// calculate the error 
	double  angular_error = angular_setpoint - angular_feedback;
	
	// Proportional term
	double angular_Pout = angular_error * angular_P;
	
	// Integral term
        angular_integral += angular_error * delta_t;
	double angular_Iout = angular_integral * angular_I;
	
	// Derivative term
	double angular_derivative = (angular_error - angular_prev_error) / delta_t;
	double angular_Dout = angular_derivative * angular_D;

	// Calculate the total output for the angular
	double angular_output = angular_Pout + angular_Iout + angular_Dout;

	// Since the range for drive message are scaled to (-1.0,1.0)
	// Scale so that no one output saturates
	double mag = abs(linear_output) + abs(angular_output);
	if (mag > 1.0)
	{
		angular_output = angular_output/mag;
		linear_output = linear_output/mag;
	}

	// Create a heron_msgs/Drive 
	heron_msgs::Drive drive;
	drive.left = (-1)*angular_output + linear_output;
	drive.right = angular_output + linear_output;
	
	// Publish the drive message
	drive_pub.publish(drive);
	  
}
void PIDController::Display()
{
	cout<<"PID parameters for the linear controller: "<<linear_P<<" "<<linear_I<<" "<<linear_D<<endl;


}


// The main function for the PID controller.
int main(int argc, char** argv)
{
	ros::init(argc,argv,"PID_controller");
	
	
	//ros::Time prev_time = ros::Time::now();
	//ros::Time now = ros::Time::now(); 
	dynamic_reconfigure::Server<heron_controller::pidConfig> server;
	dynamic_reconfigure::Server<heron_controller::pidConfig>::CallbackType f;
	f = boost::bind(&callback,_1);
	server.setCallback(f);

	PIDController linear_angular_PID;
	ros::Rate r(10);
	while(ros::ok())
	{
		//ros::Time now = ros::Time::now();
		linear_angular_PID.Display();
		linear_angular_PID.calculate();
		ros::spinOnce();
		r.sleep();
	}

	return 0;

}
