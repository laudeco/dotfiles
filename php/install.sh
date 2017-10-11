#!/bin/bash
cd "$(dirname "$0")"

# Install php
curl -s http://php-osx.liip.ch/install.sh | bash -s 7.2

# Set temporary php path
export PATH="/usr/local/php5/bin:$PATH"

sudo ln -sfn $(pwd)/php.ini /usr/local/php5/php.d/99-liip-developer.ini

# Install composer
php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer