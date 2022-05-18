#!/bin/bash

pip install virtualenv
virtualenv env
cd env
source bin/activate
pip install -r ../requirements.txt
wget https://github.com/trendmicro/tlsh/archive/master.zip -O master.zip
unzip master.zip
cd tlsh-master
. make.sh
pip install py-tlsh
cd ../../..
