#!/bin/bash

red=`tput setaf 1`
reset=`tput sgr0`

if test ! $(which mjml)
then
	if test ! $(which npm)
	then
		echo "${red}CODE 1 : NPM is not installed !${reset}" >&2
  		exit 1;
	fi

	echo " Hello, I'm installing MJML for you ..."
	npm install -g --silent mjml

	if test ! $(which mjml)
	then
		echo "${red}CODE 2 : Something goes wrong with the installation. !${reset}" >&2
  		exit 1;
	fi	

fi