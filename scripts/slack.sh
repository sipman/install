#!/bin/bash
SLACK=$(curl -s https://slack.com/intl/en-dk/downloads/instructions/ubuntu | grep -o slack-desktop-*.*.*-amd64.deb)
wget https://downloads.slack-edge.com/linux_releases/$SLACK
sudo apt install ./$SLACK
rm $SLACK