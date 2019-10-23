#!/bin/bash
cd "$(dirname "$0")"
echo 'Installing Antibody ...'
antibody bundle < zsh_plugins.txt > ~/.zsh_plugins.sh
