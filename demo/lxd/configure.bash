#!/bin/bash

# Create a project and switch to it
lxc project create demo && lxc project switch demo || exit 1

# Create a network
lxc network create demo --type bridge dns.mode=managed dns.domain=demo

# Create some profiles
lxc profile edit default < profiles/default.yaml
lxc profile create mqtt && lxc profile edit mqtt < profiles/mqtt.yaml
lxc profile create zigbee2mqtt && lxc profile edit zigbee2mqtt < profiles/zigbee2mqtt.yaml
lxc profile create homeassistant && lxc profile edit homeassistant < profiles/homeassistant.yaml
