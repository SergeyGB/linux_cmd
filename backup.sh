#!/bin/bash
set -x

timestamp=""
dirs="$(date +'%d')"
bak_dest="/mnt/op5/bak_ct"

#sudo mount -t nfs 192.168.1.32:/mnt/netac /mnt/k_netac
sudo mkdir -p ${bak_dest}/${dirs}
echo $(date) ${bak_dest}/${dirs}  >> ${bak_dest}/log.txt

sudo tar -cvpzf ${bak_dest}/${dirs}/boot${timestamp}.tar.gz /boot
sudo tar -cvpzf ${bak_dest}/${dirs}/etc${timestamp}.tar.gz /etc
sudo tar -cvpzf ${bak_dest}/${dirs}/ha${timestamp}.tar.gz /home/homeassistant/.homeassistant
sudo tar -cvpzf ${bak_dest}/${dirs}/zegbee2mqtt${timestamp}.tar.gz /opt/zigbee2mqtt/data
sudo tar -cvpzf ${bak_dest}/${dirs}/root${timestamp}.tar.gz /root
sudo tar -cvpzf ${bak_dest}/${dirs}/home_s${timestamp}.tar.gz /home/s
sudo tar -cvpzf ${bak_dest}/${dirs}/sensor-mqttd${timestamp}.tar.gz /opt/sensor-mqttd


