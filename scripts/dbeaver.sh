#LINK=https://github.com/dbeaver/dbeaver/releases$(curl https://github.com/dbeaver/dbeaver/releases | grep -oE "\".*?\.deb\"" | head -1 | cut -c 2- | rev | cut -c 2- | rev)
LINK=https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb

wget $LINK
sudo apt install -y ./dbeaver-ce_latest_amd64.deb
rm dbeaver-ce_latest_amd64.deb

#wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
#echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
#sudo apt-get update && sudo apt-get install dbeaver-ce

#sudo add-apt-repository ppa:serge-rider/dbeaver-ce
#sudo apt-get update
#sudo apt-get install dbeaver-ce

# DBeaver
#wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb &&
#sudo dpkg -i dbeaver-ce_latest_amd64.deb
#rm dbeaver-ce_latest_amd64.deb
