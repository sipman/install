require java.sh

ANDROID_HOME="/usr/lib/android-sdk/"
CMDLINE_TOOLS=${ANDROID_HOME}cmdline-tools/
TOOLS_BIN_FOLDER=${CMDLINE_TOOLS}bin/
SDKMANAGER=${TOOLS_BIN_FOLDER}sdkmanager
FILE=$(curl -s 'https://developer.android.com/studio#downloads' -o- | grep -o -m1 "commandlinetools-linux-[0-9]*_latest.zip")

echo https://dl.google.com/android/repository/$FILE
wget https://dl.google.com/android/repository/$FILE

sudo mkdir -p $ANDROID_HOME
sudo mkdir -p $CMDLINE_TOOLS
sudo mv $FILE $CMDLINE_TOOLS
cd $CMDLINE_TOOLS
sudo unzip $FILE
sudo rm $FILE
sudo chmod -R 777 $ANDROID_HOME

# Fix .bashrc
echo "# Android SDK" >> ~/.bashrc
echo "export ANDROID_HOME=\"${ANDROID_HOME}\"" >> ~/.bashrc
echo "export PATH=\"\${PATH}:${CMDLINE_TOOLS}tools/:${TOOLS_BIN_FOLDER}:${ANDROID_HOME}platform-tools/\"" >> ~/.bashrc

# Install latest android vesion
$SDKMANAGER --update
yes | $SDKMANAGER --licenses
$SDKMANAGER "platform-tools" "build-tools;29.0.3" "platforms;android-29"
yes | $SDKMANAGER --licenses

unset ANDROID_HOME
unset FILE
