/*
Coded by Luke Wen on 21st, June 2017
This program is aiming to convert the twist message produced by move_base package into the helm message which is provided by heron boat

helm.trust = constrait(twist.linear.x);
helm.yaw_rate = twist.angular.z;
*/

#include<iostream>

#include"ros/ros.h"
#include"heron_msgs/Helm.h"
#include"geometry_msgs/Twist.h"

using namespace std;

ros::Publisher helm_pub;

float constrait(float x)
{
	if ( x < -0.5)
		return -1.0;
	else if (x > 1.5)
		return 1.0;
	else if (x <= 0 && x >= -0.5)
		return x/(0.5);
	else 
		return x/1.5;	

}

void callback(const geometry_msgs::Twist::ConstPtr& twist)
{
	heron_msgs::Helm helm;
	helm.thrust = constrait(twist->linear.x);
	helm.yaw_rate = twist->angular.z;
	helm_pub.publish(helm);
}



int main(int argc, char** argv)
{	
	ros::init(argc,argv,"twist_helm");
	ros::NodeHandle n;
	helm_pub = n.advertise<heron_msgs::Helm>("cmd_helm",10);
	ros::Subscriber twist_sub = n.subscribe<geometry_msgs::Twist>("cmd_vel",10,callback);
	ros::spin();	 


}
