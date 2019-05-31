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

# Git
git config --global core.excludesfile $DOTS/config-files/.gitignore
git config --global core.editor vim
git config --global core.ignorecase true
if [[ "$(uname)" =~ "Darwin" ]]; then
    git config credential.helper osxkeychain # Permanent cache
elif [[ "$(uname)" =~ "Linux" ]]; then
    git config credential.helper 'cache --timeout=86400' # 24 hour cache