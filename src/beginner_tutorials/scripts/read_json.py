import json

with open('/home/samveed/Desktop/Projects/ROS_Intro/dancing0.json') as json_file:
    data = json.load(json_file)

myDict = {}
nested_dict = {}
# print(len(data['frames']))
for i in range(1):
    nested_dict[i] = {}
    for output in data['frames']:
        transition_time = output['transition_time_ms']
        for device in output['outputs']:
            myDict[device['device']] = device['value']
        # print(myDict)
        myDict['transition_time_ms'] = output['transition_time_ms']
        print(myDict)
    # nested_dict[i] = myDict
    # print(myDict)