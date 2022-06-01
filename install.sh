#!/bin/bash

apt update
apt upgrade -y
apt install -y wget gnupg gnupg2 x11vnc xvfb 

mkdir /.vnc
x11vnc -storepasswd 1234 ~/.vnc/passwd

cd /tmp
wget https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG
echo "deb [arch=amd64] http://repo.yandex.ru/yandex-browser/deb beta main" >> /etc/apt/sources.list.d/yandex-browser.list
apt-key add YANDEX-BROWSER-KEY.GPG
apt update
apt install -y yandex-browser-beta
echo -en "run(){\n\txauth add \$1\n\tyandex-browser --no-sandbox\n}" >> ~/.bashrc
