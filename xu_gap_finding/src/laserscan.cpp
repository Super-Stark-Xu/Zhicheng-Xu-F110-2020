#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/Vector3.h"
#include "xu_gap_finding/gaps.h"//msg type gaps

#include <math.h>

using xu_gap_finding::gaps;

class GAP//define varibles functions in GAP class
{
private: 
	float theta;
	float range[1080];

public:
	gaps gap_cal();//msg type: gaps
//	GAP();
//	gaps gap_cal();//msg type: gaps 
	//find gaps from ranges[]
	//gap_center: find gap center from find_gaps
	//gap_width: find gap width from find_gaps
	void laserCallback(const sensor_msgs::LaserScan::ConstPtr& msg);
};


/*
GAP::GAP()
{
//	ros::NodeHandle n;
//	ros::Subscriber sub = n.subscribe("scan", 10, &GAP::laserCallback, this);

	theta = 0;
	range[1080]={0};
}
*/

void GAP::laserCallback(const sensor_msgs::LaserScan::ConstPtr& msg)
// msg type: LaserScan in  package: sensor_msgs
{
//	float angle_min = msg -> angle_min;	//-135
//	float angle_max = msg -> angle_max;	//135
//	float theta = msg -> angle_increment;	//~0.24
//	float range[1080];			//[0-1079]
//	for(int i = 0; i<1080; i++)
//		range[i] = msg -> ranges[i];
	theta = msg->angle_increment;  
        for(int i = 0; i<1080; i++)
                range[i] = msg->ranges[i];


	ROS_INFO("center_x: %f", gap_cal().center.x);
	ROS_INFO("center_y: %f", gap_cal().center.y);
	ROS_INFO("width: %f", gap_cal().width.data);
}


gaps GAP::gap_cal()
{
	gaps result;
	//initialization
	result.center.x = 10;
	result.center.y = 10;
	result.center.z = 10;
	result.width.data = -1.0;
	
	float a = 0;//target scan range
	float b = 0;
	float alpha = 0;//target scan angle -135 deg ~ 135 deg, 0 deg towards to car front
	float width_max = -1;//max gap width
	
	for(int i=360; i<1080-360; i++ )
	//screen range from -45 deg ~ 45 deg, make sure the car moves forward
	{
		if( abs(range[i+1] - range[i]) > 0.5 )
		//find i+1 laser scan, which has 1m range difference from i		
		{	
			a = range[i];
			b = range[i+1];
			alpha = theta*(i - 540);
			width_max = a*a+b*b-2*a*b*cos(theta);

			if(result.width.data < width_max)
			// compare width to the previous one
			{
			 // find largest gap width and store the range
				result.width.data = sqrt(width_max);
			}
		}
	}
	
	//gap center point corelated to car
	result.center.x = ( a*cos(alpha) + b*cos(alpha + theta) )/2;
	result.center.y = ( a*sin(alpha) + b*sin(alpha + theta) )/2;

	return result;
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "find_gap");
        //the new node called find_gap
  ros::NodeHandle n;
  GAP Gap;//class pointer
  ros::Subscriber sub = n.subscribe("scan", 1, &GAP::laserCallback, &Gap);
	//suscribe to topic: scan
  ros::Publisher pub = n.advertise<gaps>("lidar_gaps", 1);
	//publish to topic lidar_gaps; msg type: gaps, in package xu_gap_finding
  ros::Rate loop_rate(0.5);//publish at 0.5Hz 
  while (ros::ok())
  {
    gaps the_gaps = Gap.gap_cal();
    pub.publish(the_gaps);
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}

