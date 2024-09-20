#!/usr/bin/env bash

if [[ "$(grep 'cgroup_memory=1 cgroup_enable=memory' /boot/firmware/cmdline.txt)" == "" ]]; then 
	before=$(cat /boot/firmware/cmdline.txt)
	echo "cgroup_memory=1 cgroup_enable=memory $before" | sudo tee /boot/firmware/cmdline.txt
fi
