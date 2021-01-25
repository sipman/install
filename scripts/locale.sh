#!/bin/bash
sudo tee -a /etc/default/locale >/dev/null << EOM
# Faroese Locale
LC_NUMERIC="fo_FO.UTF-8"
LC_TIME="fo_FO.UTF-8"
LC_MONETARY="fo_FO.UTF-8"
LC_PAPER="fo_FO.UTF-8"
LC_IDENTIFICATION="fo_FO.UTF-8"
LC_NAME="fo_FO.UTF-8"
LC_ADDRESS="fo_FO.UTF-8"
LC_TELEPHONE="fo_FO.UTF-8"
LC_MEASUREMENT="fo_FO.UTF-8"
EOM
