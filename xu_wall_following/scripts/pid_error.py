#!/usr/bin/env python

import rospy
import math
import numpy as np
import yaml
import sys
from sensor_msgs.msg import LaserScan
from std_msgs.msg import Float64
import pdb

pub = rospy.Publisher('pid_error', Float64, queue_size=10)

# You can define constants in Python as uppercase global names like these.
MIN_DISTANCE = 0.1
MAX_DISTANCE = 100.0
MIN_ANGLE = -45.0
MAX_ANGLE = 225.0
ANGEL_INCREMENT = np.degrees(rospy.get_param("/pid_error_node/angle_increment"))
THETA = np.radians(rospy.get_param("/pid_error_node/theta"))
L = rospy.get_param("/pid_error_node/lookahead_distance")
D_DESIRED = rospy.get_param("/pid_error_node/desired_distance")

# data: single message from topic /scan
# angle: between -45 to 225 degrees, where 0 degrees is directly to the right
# Outputs length in meters to object with angle in lidar scan field of view
def getRange(data, angle):
	# compute the lidar scan angle based on desired angle(for finding a & b)
	angle_lidar = angle - MIN_ANGLE
	# find ranges[]'s index
	index = int( round(angle_lidar/ANGEL_INCREMENT) )
	# find distance for the desired angle
	distance = data.ranges[index]
	# screen out unresonable values
	if distance > MAX_DISTANCE:
		distance = MAX_DISTANCE
	elif distance < MIN_DISTANCE:
		distance = MIN_DIATANCE
	return distance

# compute alpha 
def getAlpha(a,b):
	# based on equation (1)
	Num = a*np.cos(THETA) - b
	Den = a*np.sin(THETA)
	alpha = np.arctan(Num/Den)	# in Deg
	return alpha

# compute future distance
def getRange_t1(a,b):
	alpha = getAlpha(a,b)
	# distance at time = t
	D_t = b*np.cos(alpha)
	# distance at time = t+1
	D_t1 = D_t + L*np.sin(alpha)
	return D_t1

# data: single message from topic /scan
# desired_distance: desired distance to the left wall [meters]
# Outputs the PID error required to make the car follow the left wall.
def followRight(data):
	a = getRange(data,THETA)
	b = getRange(data,0)
	D_t1 = getRange_t1(a,b)
	
	error = D_t1 - D_DESIRED
	rospy.loginfo("follow right return error: %f",error)
	return error

# Outputs the PID error required to make the car follow the right wall.
def followLeft(data):
	a = getRange(data,180-THETA)
	b = getRange(data,180)
	D_t1 = getRange_t1(a,b)

	error = D_DESIRED - D_t1
	rospy.loginfo("follow left return error: %f",error)
	return error

# Outputs the PID error required to make the car drive in the middle
# of the hallway.
def followCenter(data):
	# distance a to the left wall
	a = getRange(data,THETA)
	# distance b to the right wall
	distance_0 = getRange(data,0)
	# distance b to the left wall
	distance_180 = getRange(data,180)

	alpha = getAlpha(a,distance_0)
	# track width 
	width = (distance_0 + distance_180)*np.cos(alpha)
	# desired distance to the right wall, 1/2 width in this case
	desired_distance = width/2
	
	D_t1 = getRange_t1(a,distance_0)
	error = D_t1 - desired_distance
	rospy.loginfo("follow center return error: %f",error)
	return error

# Callback for receiving LIDAR data on the /scan topic.
# data: the LIDAR data, published as a list of distances to the wall.
def scan_callback(data):
	followXXX = rospy.get_param("/pid_error_node/followXXX")
	# replace with followLeft, followRight, or followCenter

	if followXXX == "right":
		error = followRight(data)
	elif followXXX == "left":
		error = followLeft(data)
	else:
		error = followCenter(data)

	msg = Float64()
	msg.data = error
	pub.publish(msg)

# Boilerplate code to start this ROS node.
# DO NOT MODIFY!
if __name__ == '__main__':
	rospy.init_node('pid_error_node', anonymous = True)
	rospy.Subscriber("scan", LaserScan, scan_callback)
	rospy.spin()
