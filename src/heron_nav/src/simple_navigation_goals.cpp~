#include <ros/ros.h>
//#include <visualization_msgs/Marker.h>
//#include <visualization_msgs/MarkerArray.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <iostream>

using namespace std;
 
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main (int argc, char** argv)
{
	ros::init (argc,argv,"simple_navigation_goals");
	ros::NodeHandle n;
	ros::NodeHandle n2("~");
	int offset;
	n2.param("offset",offset,0);
	
	
	// Define the markerarray publisherfor waypoints and paths
	//visualization_msgs::MarkerArray waypoints;
	//ros::Publisher markerArray_pub = n.advertise<visualization_msgs::MarkerArray>("markerArray",1);	
 	//Tell the action client that we want to spin a thread bu default
	MoveBaseClient  ac("move_base",true);
	move_base_msgs::MoveBaseGoal goal;

	// The desired waypoints for our navigation.
	//float x[] = {0.0,0.0,4.0,4.0,8.0,8.0,12.0,12.0,16.0,16.0,0.0,0.0,16.0,16.0,0.0,0.0,16.0,16.0,0.0};
	//float y[] = {0.0,16.0,16.0,0.0,0.0,16.0,16.0,0.0,0.0,16.0,16.0,12.0,12.0,8.0,8.0,4.0,4.0,0.0,0.0};
	float x[] = {0,0,10,10,0};
	float y[] = {0,10,10,0,0};
	//wait for the action server to come up
	while (!ac.waitForServer(ros::Duration(5.0)))
	{
		ROS_INFO("Waiting for the move_base action server to come up");
	
	}
	
	
	//We'll send the goals
	for (size_t i = 0; i < sizeof(x)/sizeof(float); ++i)
	{
		goal.target_pose.header.frame_id = "map";
		goal.target_pose.header.stamp = ros::Time::now();
		
		goal.target_pose.pose.position.x = x[i];
		goal.target_pose.pose.position.y = y[i] + offset;
		goal.target_pose.pose.orientation.w = 1.0;
	
		ROS_INFO("Sending goal: %f %f",x[i],y[i]);
		ac.sendGoal(goal);

		ac.waitForResult(ros::Duration(60));
		
		if (ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
			ROS_INFO("Luke, the base moved successfully to : %f %f",x[i],y[i]);
		else
			ROS_INFO("Failed to : %f %f",x[i],y[i]);

		
		
		

	}
	
	return 0;

}

