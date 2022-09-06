#!/bin/bash

# Author: Andreas la Quiante
# Date of Creation: 28-AUG-2022
# Last Modified: 05-SEP-2022

# Description: Preparing hte oob-mgmt-server
# to run Python3.8 and easynamp

# Usage
# prepare.sh

python -V
python3 -V
python3.8 -V

sudo apt update
sudo apt install curl
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install python3.8
python3.8 -V
sudo apt install python3.8-distutils
curl https://bootstrap.pypa.io/get-pip.py | sudo -H python3.8
sudo apt-get install gcc python3.8-dev
sudo apt-get install libsnmp-dev snmp-mibs-downloader
sudo pip3.8 install easysnmp
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
