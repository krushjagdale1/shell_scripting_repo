#!/bin/bash


<< comment

this is just a demo perpose

comment


read -p "krushna kis se pyaar karta hai : " bandi
read -p "krushna ka pyaar is % " pyaar

if [[ $bandi = "priyanka" ]];
then
	echo "love is true..."
elif [[ $pyaar -ge 100 ]];
then
	echo "krushna is loyal"
else
	echo "krushna is not loving"
fi
