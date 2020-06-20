#!/usr/bin/env python2
from beginner_tutorials.srv import Capital, CapitalResponse
from std_msgs.msg import String
import rospy
    
def handle_capital(req):
    # print("Returning [%s + %s = %s]"%(req.a, req.b, (req.a + req.b)))
    cptl = ""
    if req.country == "France":
        cptl = "Paris"
    elif req.country == "Japan":
        cptl = "Tokyo"
    elif req.country == "Indonesia":
        cptl = "Jakarta"
    elif req.country == "Malaysia":
        cptl = "Kuala Lumpur"
    
    pub = rospy.Publisher('print_out', String, queue_size=10)
    r = rospy.Rate(10)
    while not rospy.is_shutdown():
        # rospy.loginfo(cptl)
        pub.publish(cptl)
        r.sleep()
    return CapitalResponse(cptl)
   
def capital_server():
    rospy.init_node('capital_server')
    s = rospy.Service('capital', Capital, handle_capital)
    print("Processing capital")
    rospy.spin()
   
if __name__ == "__main__":
    capital_server()