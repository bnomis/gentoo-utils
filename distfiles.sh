#!/bin/sh
# find and delete files in portage/distfiles over a year old
find /usr/portage/distfiles -type f -mtime +365 -exec rm -f {} +

