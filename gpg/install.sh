#!/bin/bash
echo 'Installing GPG.'

brew link --overwrite gnupg
export GPG_TTY=$(tty)
