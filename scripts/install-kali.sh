#!/bin/sh
CONFIG_USER=$(whoami)

sudo apt install ansible ansible-core

xfce4-panel --quit
killall xfconfd

ansible-playbook --ask-become --extra-vars "config_user=$CONFIG_USER" ansible-kali-customize/playbooks/kali-customize.yml

xfce4-panel &
