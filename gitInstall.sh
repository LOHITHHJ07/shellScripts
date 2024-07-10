#!/bin/bash


################# to install  according to  operating system ################


if [ $(uname)==="Linux" ]; then
	echo "installing  git  in  your linux system"
	sudo apt-get install git  
elif [ $(uname)==="Darwin" ]; then
	echo  "installing git in  mac os "
	brew install  git 

fi



