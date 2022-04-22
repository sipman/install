mkdir -p ~/.ssh && chmod 700 ~/.ssh
mv ~/.ssh/config ~/.ssh/config.bak
touch ~/.ssh/config && chmod 600 ~/.ssh/config

KEY_PREFIX="keyname: "

function add-ssh() {
    SSH_HOST=$(lpass show --field="Hostname" "$1")
    SSH_KEY=$(lpass show "$1" --notes | grep -o "keyname: .*" | sed -e "s/^keyname: //")

    echo " - adding \"$1\", keyname: \"$SSH_KEY\", host: \"$SSH_HOST\""

    touch ~/.ssh/$SSH_KEY.id_rsa && chmod 600 ~/.ssh/$SSH_KEY.id_rsa

    printf "\nHost $SSH_HOST\n        IdentityFile ~/.ssh/$SSH_KEY.id_rsa\n" >> ~/.ssh/config
    lpass show --field="Private Key" "$1" > ~/.ssh/$SSH_KEY.id_rsa
}

lpass ls | grep -o "Secure Notes/.*SSH" | while read line
do
    add-ssh "$line"
done

echo "SSH keys added"
