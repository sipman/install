# JetBrains Toolbox

sudo apt install fuse libfuse2

URL="https://data.services.jetbrains.com/products?code=TBA&release.type=release"
REGEX="https:\/\/download\.jetbrains\.com\/toolbox\/jetbrains-toolbox-[0-9]+\.[0-9]+\.[0-9]+\.tar\.gz"
TOOLBOX_URL=$(curl $URL | grep -Eoh $REGEX | head -1)

wget $TOOLBOX_URL
tar -xzvf jetbrains-toolbox-*.tar.gz
cd jetbrains-toolbox-*/
./jetbrains-toolbox
cd ..
rm -r jetbrains-toolbox-*/
rm jetbrains-toolbox-*.tar.gz
sudo bash -c "echo 'fs.inotify.max_user_watches = 524288' >> /etc/sysctl.d/idea.conf"
sudo sysctl -p --system
