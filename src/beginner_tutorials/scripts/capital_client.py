#!/usr/bin/env python

from __future__ import print_function

import sys
import rospy
from beginner_tutorials.srv import *

def capital_client(x):
    rospy.wait_for_service('capital')
    try:
        cpt = rospy.ServiceProxy('capital', Capital)
        resp = cpt(x)
        return resp.capital
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)

def usage():
    return "%s [x]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 2:
        x = (sys.argv[1])
    else:
        print(usage())
        sys.exit()
    # print("Requesting %s"%(x))
    capital_client(x)
    # print("Capital of %s is %s"%(x,capital_client(x)))
