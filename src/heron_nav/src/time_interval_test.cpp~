/*
Coded by luke wen on 16th, June 2017
Aiming to test the ros::Time::now() function.

*/
#include<ros/ros.h>
#include<iostream>

using namespace std;

int main(int argc, char** argv)
{
	ros::init(argc,argv,"time_test");
	ros::NodeHandle n;
	
	ros::Time a = ros::Time::now();
	ros::Time b = ros::Time::now();
	ros::Duration c = a - b;

	cout << c.toSec()<<endl;

}
