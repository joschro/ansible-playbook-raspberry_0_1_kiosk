#!/bin/sh

while :; do ps ax | grep piwiz | grep -v grep || break; sleep 10; done
sleep 30
apt-get install -y ansible
ansible-playbook $* local.yml && rm -f /home/pi/.config/lxsession/LXDE/autostart && reboot
