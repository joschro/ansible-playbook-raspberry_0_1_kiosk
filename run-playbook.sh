#!/bin/sh

#while :; do ps ax | grep piwiz | grep -v grep || break; sleep 10; done
while :; do ping -w 10 -c 2 heise.de && break; sleep 10; done
sleep 30
while :; do apt-get install -y ansible && break; sleep 10; done
ansible-playbook $* local.yml && rm -rf /home/pi/.config/autostart && reboot
