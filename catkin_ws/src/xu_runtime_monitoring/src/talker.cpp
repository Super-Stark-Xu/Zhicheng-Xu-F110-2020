#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "geometry_msgs/Twist.h"
class average_speed
{
private:
   int i;//loop index
   int n;//number of data in data set
   int index;//speed data set index
   double speed_set[9];//speed data set

public:
  average_speed()//initialization
  {
    n = 0;
    index = 0;
    for(i = 0; i < 10; i++)
      speed_set[i] = 0;
  } 

  void x_speed_callback(const geometry_msgs::Twist::ConstPtr& msg)
  { 
    double x = msg->linear.x;//x speed = x
    speed_set[index] = x;//save current speed to the set
    index++;
    if(index > 9)
      index = 0;//reset index to 0 if receive more than 10 data to restore the latest data
    if (n < 10)
      n++;// tracking the number of data before the 10th data arrives

    ROS_INFO("current x speed: %f, average speed: %f", x, average_speed_cal());
	//get x_speed data from geometry_msgs/Twist and present it on the screan
  }
public:
  double average_speed_cal() //calculate average speed in speed_set
  {
    double sum = 0;
    for(i = 0; i < 10; i++)
      sum += speed_set[i];
    return sum/n; //return average speed
  }

};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "xu_average");
	//the new node called xu_average
  ros::NodeHandle n;
  average_speed average;//class pointer
  ros::Subscriber sub = n.subscribe("turtle1/cmd_vel", 10, &average_speed::x_speed_callback, &average);
  ros::Publisher pub = n.advertise<std_msgs::Float64>("average_velocity", 10);  
  ros::Rate loop_rate(5);//publish at 5Hz

  while (ros::ok())
  {
    std_msgs::Float64 msg;
    msg.data = average.average_speed_cal();
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep(); 
	//use the ros::Rate object to sleep for the time remaining to hit 5Hz publish rate. 
  }
 
  return 0;
}
