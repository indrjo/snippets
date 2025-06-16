#!/usr/bin/env bash

#
# Make sure the emacs snippet files do not end with a newline. 
#

_sanitize () {
  perl -i -ne 'chomp; print; print "\n" unless eof;' "$1"
}

export -f _sanitize

find . -type f -exec bash -c '[ `tail -c 1 "{}"` ] || _sanitize "{}"' \;