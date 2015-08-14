#!/bin/bash
### install applications dependencies
apt-get install -qq $(egrep -v '^\s*#' packages.txt)