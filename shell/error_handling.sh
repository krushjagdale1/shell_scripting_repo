#!/bin/bash


create_dir(){

	mkdir demo

}

if ! create_dir; then
	echo "the code is already existed"
	exit 1
fi

echo "this should notwork because code is already existed"
