#include "ros/ros.h"
#include "PathPlanner/configService.h"
#include <cstdlib>
#include <string>
enum { CONFIG };

int main(int argc, char **argv)
{

  ros::init(argc, argv, "request_motor_config");
  if (argc != 2)
  {
    ROS_INFO("usage: request_motor_config <command>");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<PathPlanner::configService>("motor_configuration");
  PathPlanner::configService srv;
  srv.request.command = atoi(argv[1]);
  if (client.call(srv))
  {
	  if(srv.response.number>0)
	 	  ROS_INFO("Number of motors: %d", srv.response.number);
	  else
		  ROS_INFO("Number of motors: %s", "Illegal Command");

  }
  else
  {
    ROS_ERROR("Failed to call motor configuration service!");
    return 1;
  }
   return 0;
}

