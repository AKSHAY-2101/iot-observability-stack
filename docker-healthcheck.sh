#!/bin/bash
# Check if Mosquitto Broker is accepting connections
mosquitto_sub -h localhost -t '$SYS/#' -C 1 > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "MQTT Broker Healthy"
    exit 0
else
    echo "MQTT Broker Unresponsive"
    exit 1
fi
