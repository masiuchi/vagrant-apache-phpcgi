#!/bin/bash

yum -y install httpd php

ln -s /usr/bin/php-cgi /var/www/cgi-bin/

if [[ ! -f /etc/httpd/conf.d/php-cgi.conf ]]; then
  mv /etc/httpd/conf.d/php.conf /etc/httpd/conf.d/php.conf.d
  cp -rf /vagrant/conf/* /
fi

rm -rf /var/www/html/
ln -s /vagrant/html /var/www/

service httpd start
chkconfig --level 345 httpd on

