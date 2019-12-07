# ansible-playbook-raspberry_0_1_kiosk
Playbook for Raspberry Pi zero and 1 to be set up as kiosk system

## Install RedSleeve Linux

## Setup Wifi connection
`[root@rpi ~]# nmtui`
Select `Edit a connection`, then choose the wifi you want to connect to and enter the password when prompted for. Then selcet `back` and then `Quit` and confirm with `<OK>`

Use the command `ifconfig` to show the IP address the RPi got from the DHCP server.

## Install required packages
`[root@rpi ~]# yum install epel-release git vim`

and confirm with `y`

## Run Ansible playbook
Clone this Ansible github repository with

``[root@rpi ~]# git clone https://github.com/joschro/ansible-playbook-raspberry_0_1_kiosk.git`
