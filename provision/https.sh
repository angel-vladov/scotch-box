#!/usr/bin/env bash

# Enable SSL mode
a2enmod ssl
service apache2 restart

# Apply correct configuration
a2ensite default-ssl.conf
cp -rf /var/www/provision/files/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
service apache2 restart
