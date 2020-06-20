#!/usr/bin/env python2

import json
import rospy
import actionlib
from std_msgs.msg import String
from beginner_tutorials.msg import ParseFileAction, ParseFileFeedback, ParseFileResult

class ParseFileServer:
    
    def __init__(self):
        self.server = actionlib.SimpleActionServer('parsefile', ParseFileAction, self.execute, False)
        self.server.start()
    
    def execute(self,goal):
        
        result = ParseFileResult()
        feedback = ParseFileFeedback()
        rate = rospy.Rate(1)

        pub = rospy.Publisher('print_out', String, queue_size=10)
        with open('/home/samveed/Music/catkin_ws/src/beginner_tutorials/scripts/dancing0.json') as json_file:
            data = json.load(json_file)

        myDict = {}
        nested_dict = {}
        # print(len(data['frames']))
        # for i in range(1):
            # nested_dict[i] = {}
        for output in data['frames']:
            transition_time = output['transition_time_ms']
            for device in output['outputs']:
                myDict[device['device']] = device['value']
                    # print(myDict)
            myDict['transition_time_ms'] = output['transition_time_ms']
                    # print(myDict)
            feedback.last_frame = str(myDict)
            result.frame.append(str(myDict))
            self.server.publish_feedback(feedback)
            pub.publish(feedback.last_frame)
            rate.sleep()
            
        # for i in range(goal.index):
        #     rospy.loginfo(str(nested_dict[i]))
        #     pub.publish(str(nested_dict[i]))
        #     rate.sleep()

        self.server.set_succeeded(result)

if __name__ == "__main__":
    rospy.init_node("ParserFile_server")
    s = ParseFileServer()
    print("Processing Action")
    rospy.spin()