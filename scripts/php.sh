# PHP
sudo apt install -y \
    php7.2 php7.2-cli php7.2-mbstring php7.2-xml \
    php7.2-curl php7.2-fpm php-pear php7.2-dev \
    libmcrypt-dev libreadline-dev php7.2-zip \
    php7.2-sqlite3 php7.2-mysql php7.2-pgsql

sudo pecl install mcrypt-1.0.1
sudo bash -c "echo extension=/usr/lib/php/20170718/mcrypt.so > /etc/php/7.2/cli/conf.d/mcrypt.ini"
sudo bash -c "echo extension=/usr/lib/php/20170718/mcrypt.so > /etc/php/7.2/apache2/conf.d/mcrypt.ini"
