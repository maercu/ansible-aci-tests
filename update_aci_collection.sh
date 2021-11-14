#!/bin/bash

echo "Testing $1"

ansible-galaxy collection build --force --output-path /tmp /Users/maercu/dev/ansible-aci
ansible-galaxy collection install /tmp/cisco-aci-* --force

sleep 10

cd ~/.ansible/collections/ansible_collections/cisco/aci
ansible-test sanity plugins/modules/$1.py
