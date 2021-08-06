#!/bin/bash

sudo -E sh 07_stop_definode.sh

cd defichain
sudo rm snapshot.zip
sudo rm -r anchors
sudo rm -r backup
sudo rm -r blocks
sudo rm -r burn
sudo rm -r chainstate
sudo rm -r enhancedcs
sudo rm -r history
sudo rm -r indexes
sudo rm -r spv

cd ..
sudo -E sh 02_download_snapshot.sh

sudo -E sh 04_run_definode.sh

echo ""
echo ""
