# ansible-playbook-raspberry_0_1_kiosk
Playbook for Raspberry Pi zero and 1 to be set up as kiosk system

## Install Raspbian Linux
* Download the latest Raspbian image from ```http://downloads.raspberrypi.org/raspbian/images/```
* Copy image to an SDcard with e.g.

```dd status=progress bs=4M of=/dev/sda if=<path-to-image>/2019-09-26-raspbian-buster.img```

### Set up for automatic installation in case of e.g. batch production of ready-to-go SDcards
* Mount the 2nd partition, e.g. /dev/sda2, to e.g. /mnt

```mount /dev/sda2 /mnt```
* Change directory to the later home directory of the root user

```cd /mnt/root```
* Save this repo as a zip file

```wget https://github.com/joschro/ansible-playbook-raspberry_0_1_kiosk/archive/master.zip```
* Unzip it

```unzip master.zip```
* Change directory

```cd ansible-playbook-raspberry_0_1_kiosk-master/```
* Move the telegram secrets file to the root user's home directory

```mv telegram_secrets.yml ../```
* Edit the file telegram_secrets.yml and insert the telegram credentials for your bot and channel
* Create autostart directory for user pi and add autostart file
```
mkdir -p ../../home/pi/.config/autostart
mv autostart.desktop ../../home/pi/.config/autostart/
chown -R 1000:1000 ../../home/pi/.config
```
* Edit ```kiosk_urls``` in local.yml to reflect your choice of URLs shown in kiosk mode
* Unmount /mnt

```umount /mnt```
* Insert card into Raspberry Pi Zero or Raspberry Pi 1 and power it up; follow the instructions on bootup and wait for the installation to complete and let the Raspi reboot

### Set up manually
* Boot the Raspi; follow the instructions to set it up
* Open a terminal and run
```
pi@raspberrypi:~ $ sudo su -
root@raspberrypi:~# apt-get -y install vim ansible git screen
```

#### Run Ansible playbook
Clone this Ansible github repository with

```root@raspberrypi:~# git clone https://github.com/joschro/ansible-playbook-raspberry_0_1_kiosk.git```

then change into the new directory

```root@raspberrypi:~# cd ansible-playbook-raspberry_0_1_kiosk```

Now run the playbook with

```root@raspberrypi:~# sh ./run-playbook.sh```
