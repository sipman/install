require php.sh

# Composer
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php
sudo chown -R $USER ~/.composer/
echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bashrc
