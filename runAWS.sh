#!/bin/bash

export deviceType="Temperature"
export deviceID="4711"
export initialValue="20"
export count="50"
export waitTime="1"
export receiverURL="ec2-34-209-131-130.us-west-2.compute.amazonaws.com"
export brokerUID="admin"
export brokerPassword="change12_me"

echo "Starting the producer to send messages "
java -DbrokerUID=$brokerUID -DbrokerPassword=$brokerPassword -DreceiverURL=$receiverURL -DdeviceType=$deviceType -DdeviceID=$deviceID -DinitialValue=$initialValue -Dcount=$count -DwaitTime=$waitTime -jar Software_Sensor/target/softwareSensor-jar-with-dependencies.jar
