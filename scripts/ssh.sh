function add-ssh() {
    SSH_HOST=$(lpass show --field="Hostname" "$1")

    mkdir -p ~/.ssh && chmod 700 ~/.ssh
    touch ~/.ssh/config.bak && chmod 600 ~/.ssh/config.bak
    touch ~/.ssh/$2.id_rsa && chmod 600 ~/.ssh/$2.id_rsa

    printf "\nHost $SSH_HOST\n        IdentityFile ~/.ssh/$2.id_rsa\n" >> ~/.ssh/config.bak
    lpass show --field="Private Key" "$1" > ~/.ssh/$2.id_rsa
}

add-ssh "Secure Notes/GitHub SSH"           github
add-ssh "Secure Notes/Bitbucket SSH"        bitbucket
add-ssh "Secure Notes/Beståteori SSH"       bestaateori
add-ssh "Secure Notes/Polytope Clients SSH" polytope-clients
add-ssh "Secure Notes/Auto Taxi SSH"        auto
