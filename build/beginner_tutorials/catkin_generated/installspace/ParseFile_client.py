#!/usr/bin/env python2

import rospy
import actionlib

from beginner_tutorials.msg import ParseFileAction, ParseFileGoal

def feedback_cb(msg):
     print ('Feedback received: %s' %(msg))

def call_server():
    
    client = actionlib.SimpleActionClient('parsefile', ParseFileAction)

    client.wait_for_server()

    goal = ParseFileGoal()
    goal.index = 16

    client.send_goal(goal, feedback_cb=feedback_cb)

    client.wait_for_result()

    final_result = client.get_result()

    return final_result

if __name__ == '__main__':
    
    try:
        rospy.init_node("ParserFile_client")
        result = call_server()
        print('The result is: %s' %(result))
    except rospy.ROSInterruptException as e:
        print('Something went wrong: %s' %(e))