#include "ros/ros.h"
#include "PathPlanner/configService.h"

enum { CONFIG };

bool replyMotorConfig(PathPlanner::configService::Request  &req,
         PathPlanner::configService::Response &res )
{
	int numberOfMotors = 10;
	switch(req.command)
	{
	case CONFIG:
				res.number = numberOfMotors;
				ROS_INFO("Requesting command - %s", "CONFIG");
				ROS_INFO("Sending back response: [%d]", res.number);
				break;
	default:
			    res.number = 0;
				ROS_INFO("Requesting command - %s", "Illegal Command");
				ROS_INFO("Sending back response: [%d]", res.number);
				break;
	}

	return true;
}

int main(int argc, char **argv)
{
   ros::init(argc, argv, "motor_config_service");
   ros::NodeHandle n;

   ros::ServiceServer service = n.advertiseService("motor_configuration", replyMotorConfig);
   ROS_INFO("Motors ready.");
   ros::spin();

   return 0;
}
