#!/bin/bash
apt-get install -y python3-venv
git clone https://github.com/CiscoDevNet/pyats-sample-scripts
python3 -m venv venv
source venv/bin/activate
pip3 install pyats
pip3 install tabulate
