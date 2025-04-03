#!/bin/bash



<< task
we are deploying a simple django project using shell scripting...
task


code_clone(){

	echo "cloning the code on the terminal"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirments(){
 
	echo "installing some requirments pkgs"
	sudo chowm  $USER /var/run/docker.sock
	sudo apt install docker.io -y 
	sudo apt install nginx -y

}

required_restart(){
 
	sudo systemctl enable docker
	sudo systemctl enable nginx

}

deploy(){

      docker build -t notes-app .
      docker run -itd -p 8000:8000 notes-app

}

echo "**************** DEPLOYMNET STARTED ******************"

if ! code_clone; then
	echo "code is already existed "
	cd django-notes-app
fi

install_requirments
required_restart
deploy



echo "*************** DEPLOYMENT ENDED ********************"






