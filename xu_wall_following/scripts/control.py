#!/usr/bin/env python

import rospy
from race.msg import drive_param
from std_msgs.msg import Float64
import numpy as np
import math

# TODO: modify these constants to make the car follow walls smoothly.
KP = rospy.get_param("/control_node/kp")
KD = rospy.get_param("/control_node/kd")
MIN_SPEED = rospy.get_param("/control_node/min_speed")
MID_SPEED = rospy.get_param("/control_node/mid_speed")
MAX_SPEED = rospy.get_param("/control_node/max_speed")
MIN_STEER_ANGLE = rospy.get_param("/control_node/min_steer_angle")
MAX_STEER_ANGLE = rospy.get_param("/control_node/max_steer_angle")

pub = rospy.Publisher('drive_parameters', drive_param, queue_size=1)

# varible speed controller
def getVelocity(angle):
	if abs(angle) < MIN_STEER_ANGLE:
		velocity = MAX_SPEED
	elif abs(angle) < MAX_STEER_ANGLE:
		velocity = MID_SPEED
	else:
		 velocity = MIN_SPEED
	return velocity

# Callback for receiving PID error data on the /pid_error topic
# data: the PID error from pid_error_node, published as a Float64
error_0 = 0.0	# at time t_n-1
t_0 = 0.0	# at time t_n-1

def control_callback(msg):
	global error_0, t_0
	error = msg.data	# at time t_n
	t = rospy.get_time()	# at time t_n
  # TODO: Based on the error (msg.data), determine the car's required velocity and steering angle.
  	# compute derivate of error
	d_error = (error - error_0)/(t - t_0)
	
	# compute pid response for steering angle based on the error
	pid_output = -( KP*error + KD*d_error)
  	
	# resign error and time
	error_0 = error
	t_0 = t

	# compute velocity based on the steering angle response. Remember you need to slow down accordingly based on how much you turn.	

	#convert the angle to radians if not already in radians
  	angle = pid_output
	# 0.4189 rad =  24 deg because car can only turn 24 degrees max
	angle = np.clip(angle, -24, 24)	
	
	# compute velocity based on the steering angle response. Remember you need to slow down accordingly based on how much you turn.
	vel = getVelocity(angle)
	#vel = 1	

	msg = drive_param()
	msg.velocity = vel  # TODO: implement PID for velocity
	msg.angle = angle    # TODO: implement PID for steering angle
	pub.publish(msg)

# Boilerplate code to start this ROS node.
if __name__ == '__main__':
	rospy.init_node('pid_controllor_node', anonymous=True)
	rospy.Subscriber("pid_error", Float64, control_callback)
	rospy.spin()

