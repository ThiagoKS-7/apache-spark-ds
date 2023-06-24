#!/bin/bash

while getopts p: flag
do
	case "${flag}" in
		p) password=${OPTARG};;
	esac
done

wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
echo $password | sudo  -S apt install unzip -y && unzip -v
echo $password | sudo  -S unzip ngrok-stable-linux-amd64.zip
rm -rf ngrok-stable-linux-amd64.zip
echo "[INFO] Ngrok instalation done!"