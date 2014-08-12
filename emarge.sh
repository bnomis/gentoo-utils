#!/bin/sh
# portage sync and fetch files
echo -n 'Start emarging ' >> /var/log/emarge.log 2>&1
date >> /var/log/emarge.log 2>&1
emerge --nospinner --quiet --sync > /dev/null 2>&1
emerge --nospinner --quiet --deep --newuse --fetchonly --update --with-bdeps=y @world > /dev/null 2>&1
echo -n 'Stop emarging ' >> /var/log/emarge.log 2>&1
date >> /var/log/emarge.log 2>&1
echo  -e "------------\n" >> /var/log/emarge.log 2>&1

