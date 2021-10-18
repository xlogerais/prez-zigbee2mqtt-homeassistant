#!/bin/bash

lxc project switch demo || { echo "Error: unable to switch to project demo. Exiting." ; exit 1 ; }

# Delete the instances
lxc delete -f homeassistant
lxc delete -f zigbee2mqtt
lxc delete -f mqtt

# Delete the images
lxc image list --format json | jq '.[].fingerprint' | xargs lxc image delete

# Delete the profiles
lxc profile delete mqtt
lxc profile delete zigbee2mqtt
lxc profile delete homeassistant
echo '{}' | lxc profile edit default

# Delete the network
lxc network delete demo

# Delete the project
lxc project delete demo
