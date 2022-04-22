#!/bin/bash
sudo apt install hub
echo -e "\n# Github Hub\neval \"\$(hub alias -s)\"\n" >> ~/.bashrc
