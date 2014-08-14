#!/bin/sh
find /tmp -mtime +7 -type d -exec rm -rf {} \; > /dev/null 2>&1
find /tmp -mtime +7 -exec rm -f {} \; > /dev/null 2>&1
