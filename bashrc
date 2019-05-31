#!/bin/bash

export DOTS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Custom utility commands
PATH="${DOTS}/utils:${PATH}"
export PATH

# Custom source utility commands
for file in $DOTS/source-utils/* ; do
    if [ -f "$file" ] ; then
        source "$file"
    fi
done

# Make the command line have Vi functionality
set -o vi

# Aliases
alias ll='ls -lh'
alias la='ls -lah'

# Config File Pointers
git config --global core.excludesfile $DOTS/config-files/.gitignore