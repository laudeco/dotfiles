#!/bin/bash
cd "$(dirname "$0")"
antibody bundle < zsh_plugins.txt > ~/.zsh_plugins.sh
