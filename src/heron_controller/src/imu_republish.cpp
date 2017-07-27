#include <ros/ros.h>
#include <sensor_msgs/Imu.h>
#include <iostream>

using namespace std;

class ImuRep
{
public:
	ImuRep();
	~ImuRep();
	void Display();
private:
	ros::NodeHandle n;
	//ros::Publisher imu_pub;
	ros::Subscriber imu_sub;
	void imucallback(const sensor_msgs::Imu::ConstPtr& imu);
	ros::Time now;
};

// Define the constructor
ImuRep::ImuRep()
{
	now = ros::Time();
	imu_sub = n.subscribe<sensor_msgs::Imu>("imu/data",10,&ImuRep::imucallback,this);	
}

ImuRep::~ImuRep()
{
	cout<<"Destructor."<<endl;
}

void ImuRep::imucallback(const sensor_msgs::Imu::ConstPtr& imu)
{
	 now = imu->header.stamp;

}
void ImuRep::Display()
{
	cout<<"the now value is "<< now <<endl;

}

int main(int argc, char** argv)
{
	ros::init(argc,argv,"node");
	
	ImuRep imurep;
	ros::Rate l(1);
	
	while(ros::ok())
	{
		imurep.Display();
		ros::spinOnce();
		l.sleep();

	}

}



