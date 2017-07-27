/*
Coded by luke wen aiming to test the paramters used in the node.

*/

#include<ros/ros.h>
#include<iostream>

using namespace std;

int main(int argc, char** argv)
{
	ros::init(argc,argv,"parameters");
	ros::NodeHandle n("~");


	int num1;
	ros::Rate r(10);
	n.param("num",num1,10);
while(ros::ok())
{
	cout<<num1<<endl;
 	ros::spinOnce();		 
	//ros::Duration(0.5).sleep();
	//ros::spin();
}
return 0;	
}
