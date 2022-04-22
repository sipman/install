#!/bin/bash
curl 'https://discord.com/api/download?platform=linux&format=deb' \
  -L \
  -H 'authority: discord.com' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'referer: https://discord.com/' \
  --output discord.deb
sudo apt install -y ./discord.deb
rm discord.deb