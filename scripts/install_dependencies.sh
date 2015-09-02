#!/bin/bash
### install applications dependencies

cd /var/www/html
apt-get install -qq $(egrep -v '^\s*#' packages.txt)