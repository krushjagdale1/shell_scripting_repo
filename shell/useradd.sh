#!/bin/bash

read -p "Enter your username here : " username
echo "your added successfully $username "
sudo useradd -m $username
echo "user add is successfully"
