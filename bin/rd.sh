#!/bin/bash

cat /home/petr/.rdesktop.pass | rdesktop -g 1000x800 -d domena -u 'login name' $1 -p -
