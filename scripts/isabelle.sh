VERSION=$(curl --silent https://isabelle.in.tum.de/dist/ 2>&1 | grep -Eo "Isabelle20[0-9]{2}_linux\\.tar\\.gz" | head -1)

wget "https://isabelle.in.tum.de/dist/$VERSION"
tar -xzf $VERSION
rm $VERSION

sudo mv Isabelle20* /opt/isabelle

printf "[Desktop Entry]\nType=Application\nName=Isabelle\nComment=HOL based theorem prover\nExec=/opt/isabelle/$(ls -l /opt/isabelle | grep -Eo "Isabelle20[0-9]{2}")\nIcon=/opt/isabelle/lib/icons/isabelle.xpm\nTerminal=false\nCategories=Education;Science;Math;\nX-Desktop-File-Install-Version=0.22" | sudo tee -a /usr/share/applications/isabelle.desktop

