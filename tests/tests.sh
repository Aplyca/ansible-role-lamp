#!/bin/bash
# Testing LAMP

mysql -V
apachectl -v
php -v
php -i | grep -q 'mysql' && (echo 'PHP MySQL installed' && exit 0) || (echo 'PHP MySQL not installed' && exit 1)
apachectl -M | grep -q 'php' && (echo 'PHP module for Apache installed' && exit 0) || (echo 'PHP module for Apache not installed' && exit 1)
curl http://myapp.com

exit 0
