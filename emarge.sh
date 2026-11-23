#!/bin/sh
# portage sync and fetch files
{
	printf 'Start emarging '
	date
} >> /var/log/emarge.log 2>&1
emerge --nospinner --quiet --sync > /dev/null 2>&1
emerge --nospinner --quiet --deep --newuse --fetchonly --update --with-bdeps=y @world > /dev/null 2>&1
{
	printf 'Stop emarging '
	date
	printf '%s\n\n' '------------'
} >> /var/log/emarge.log 2>&1
