# ansible-playbook-raspberry_0_1_kiosk
Playbook for Raspberry Pi zero and 1 to be set up as kiosk system

## Install Raspbian Linux
* Download the latest Raspbian image from ```http://downloads.raspberrypi.org/raspbian/images/```

### Set up for automatic installation in case of e.g. batch production of ready-to-go SDcards
* Copy the image to an SDcard and mount the 2nd partition, e.g. /dev/sda2, to e.g. /mnt

```mount /dev/sda2 /mnt```
* change directory to the later home directory of the root user

```cd /mnt/root```
* save this repo as a zip file

```wget https://github.com/joschro/ansible-playbook-raspberry_0_1_kiosk/archive/master.zip```
* unzip it

```unzip master.zip```
* move the telegram secrets file to the root user's home directory

```mv telegram_secrets.yml ../```
* edit the file telegram_secrets.yml and insert the telegram credentials for your bot and channel
* create autostart directory for user pi and add autostart file
```mkdir -p ../../home/pi/.config/lxsession/LXDE
mv autostart ../../home/pi/.config/lxsession/LXDE/
chown -R 1000:1000 ../../home/pi/.config/lxsession
```
* edit ```kiosk_urls``` in local.yml to reflect your choice of URLs shown in kiosk mode

### Set up manually
* Copy the image to an SDcard and boot the Raspi; follow the instructions to set it up
* Open a terminal and run
```pi@raspberrypi:~ $ sudo su -
root@raspberrypi:~# apt-get -y install vim ansible git screen
```

#### Run Ansible playbook
Clone this Ansible github repository with

```root@raspberrypi:~# git clone https://github.com/joschro/ansible-playbook-raspberry_0_1_kiosk.git```

then change into the new directory

```root@raspberrypi:~# cd ansible-playbook-raspberry_0_1_kiosk```

Now run the playbook with

```root@raspberrypi:~# sh ./run-playbook.sh```
