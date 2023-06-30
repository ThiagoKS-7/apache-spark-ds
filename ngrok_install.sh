#!/bin/bash

while getopts p: flag
do
	case "${flag}" in
		p) password=${OPTARG};;
	esac
done
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
echo $password | sudo -S tar xvzf ngrok-v3-stable-linux-amd64.tgz
echo $password | sudo  -S sudo rm -rf ngrok-v3-stable-linux-amd64.tgz
echo "[INFO] Ngrok instalation done!"
