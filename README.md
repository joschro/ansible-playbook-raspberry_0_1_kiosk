# ansible-playbook-raspberry_0_1_kiosk
Playbook for Raspberry Pi zero and 1 to be set up as kiosk system

## Install Raspbian Linux
* Download the latest Raspbian image from ```http://downloads.raspberrypi.org/raspbian/images/```
* Copy the image to an SDcard and boot the Raspi; follow the instructions to set it up
* Open a terminal and run
```pi@raspberrypi:~ $ sudo su -
root@raspberrypi:~# apt-get -y install vim ansible git screen
```

## Run Ansible playbook
Clone this Ansible github repository with

```root@raspberrypi:~# git clone https://github.com/joschro/ansible-playbook-raspberry_0_1_kiosk.git```

then change into the new directory

```root@raspberrypi:~# cd ansible-playbook-raspberry_0_1_kiosk```

Now run the playbook with

```root@raspberrypi:~# sh ./run-playbook.sh```
