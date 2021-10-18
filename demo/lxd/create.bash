#!/bin/bash

lxc launch images:debian/11/cloud --profile default --profile mqtt mqtt
sleep 3

lxc launch images:debian/11/cloud --profile default --profile zigbee2mqtt zigbee2mqtt
#lxc config device add zigbee2mqtt cc2531 unix-char mode=0666 path=/dev/ttyACM0
sleep 3

lxc launch images:debian/11/cloud homeassistant --vm --profile default --profile homeassistant
