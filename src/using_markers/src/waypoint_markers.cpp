/*
Coded by luke Wen on 16th, June, 2017 aiming to establish the marker array into the RVIZ in order to evaluate the performance of the navigation more precisely.

*/
#include<ros/ros.h>
#include<iostream>
#include<visualization_msgs/Marker.h>
#include<visualization_msgs/MarkerArray.h>
#include<geometry_msgs/Point.h>
using namespace std;

int main(int argc, char** argv)
{
	// Initialize the ros 
	ros::init(argc,argv,"Waypoint_Markers");
	ros::NodeHandle n;
	ros::NodeHandle n1("~");
	int offset;
	n1.param("offset",offset,0);
	// The desired points which we want to reach.
	//float x[] = {0.0,0.0,4.0,4.0,8.0,8.0,12.0,12.0,16.0,16.0,0.0,0.0,16.0,16.0,0.0,0.0,16.0,16.0,0.0};
	//float y[] = {0.0,16.0,16.0,0.0,0.0,16.0,16.0,0.0,0.0,16.0,16.0,12.0,12.0,8.0,8.0,4.0,4.0,0.0,0.0 };
	float x[] = {0,0,10,10,0};
	float y[] = {0,10,10,0,0};
	
	// Create a publisher for the markerArray which includes the points and paths
	ros::Publisher MarkerArray_pub = n.advertise<visualization_msgs::MarkerArray>("Waypoints_Markers",1);
	ros::Publisher PointsMarker_pub = n.advertise<visualization_msgs::Marker>("PointMarker",1);
	
	//Rate 
	ros::Rate r(1);
	
while(ros::ok())
{
	// Create two markers for the points and lines, and one markerArray for the whole things.
	visualization_msgs::Marker Points;
	visualization_msgs::Marker Lines;
	visualization_msgs::MarkerArray Waypoint_path_MarkerArray;

	
	// The header info for the points and lines marker.
	Points.header.frame_id = Lines.header.frame_id = "map";
 	Points.header.stamp = Lines.header.stamp = ros::Time();
	// The namespace info 
	Points.ns = Lines.ns = "MarkerArray";
	// The action 
	Points.action = Lines.action = visualization_msgs::Marker::ADD;
	// The orientation info, position info will be mentioned by the points
	Points.pose.orientation.w = Lines.pose.orientation.w = 1.0;
	// the id info for different markers	
	Points.id = 0;
	Lines.id = 1;
	// The types for different markers
	Points.type = visualization_msgs::Marker::POINTS;
	Lines.type = visualization_msgs::Marker::LINE_STRIP;
	Points.scale.x = 1;
	Points.scale.y = 1;
	Lines.scale.x = 0.1;
	// THe color info for the markers
	Points.color.a = Lines.color.a = 1.0f;
	Points.color.g = 1.0f;
	Lines.color.b = 1.0f;
	// lifetime 
	Points.lifetime = Lines.lifetime = ros::Duration();
	

	
	for (size_t i = 0; i < sizeof(x)/sizeof(float); i++)
	{ 
		cout<<i<<endl;
		geometry_msgs::Point p;
		p.x = x[i];
		p.y = y[i] + offset;
		
		Points.points.push_back(p);
		Lines.points.push_back(p);	

	}
	Waypoint_path_MarkerArray.markers.push_back(Points);
	Waypoint_path_MarkerArray.markers.push_back(Lines);
	MarkerArray_pub.publish(Waypoint_path_MarkerArray);
	//PointsMarker_pub.publish(Points);
	while (MarkerArray_pub.getNumSubscribers() < 1)
	{
		if (!ros::ok())
		{
			return 0;
		}
		
		ROS_WARN_ONCE("Please create a subscriber to the MarkerArray_pub.");
		sleep(1);
	}
	
	cout<<"There are "<<Waypoint_path_MarkerArray.markers.size()<<" markers in this MarkerArray totally!"<<endl;
	//cout<<Points.points.size()<<endl;
	//ros::spin();
	r.sleep();
}	
}
