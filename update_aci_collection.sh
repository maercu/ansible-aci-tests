#!/bin/bash


ansible-galaxy collection build --force --output-path /tmp /Users/maercu/dev/ansible-aci
ansible-galaxy collection install /tmp/cisco-aci-* --force

