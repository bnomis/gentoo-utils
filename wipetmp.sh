#!/bin/sh
# Remove files, symlinks and then empty directories in /tmp untouched for 7 days.
# -mindepth 1 keeps /tmp itself, -xdev stays on /tmp's filesystem, and -delete
# avoids the find/rm race that rm -rf on a world-writable directory allows.
find /tmp -xdev -mindepth 1 -depth \( -type f -o -type l \) -mtime +7 -delete > /dev/null 2>&1
find /tmp -xdev -mindepth 1 -depth -type d -empty -mtime +7 -delete > /dev/null 2>&1
