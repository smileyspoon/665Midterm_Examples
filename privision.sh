#!/bin/bash

ARGS=${1}
version=1.0.0

function install_all() {
	sudo yum update -y

	sudo amazon-linux-extras install nginx1.12 -y

	sudo chkconfig nginx on

	sudo aws s3 cp s3://calvinleeassignment3/index.html /usr/share/nginx/html/index.html

	sudo service nginx start
}


function remove_all(){

	sudo service nginx stop

#	chmod 777 /usr/share/nginx/html/*

	sudo rm /usr/share/nginx/html/*

	sudo yum remove nginx -y
}

function version_number() {
	echo $version
}

function help_me() {

	cat << HELPTEXT
		How to use:  ${0} {without any arguments|-r|--remove|-v|--version|-h|--help}	
		
		OPTIONS:
			without arguments (update, install nginx1.12, always turn on nginx on bootup, copy index.html, start nginx)
			-r|--remove (stops nginx, remove files in html folder, removes nginx)
			-v|--version (shows version number of this file)
			-h|--help (shows option commands)		
HELPTEXT
}


case "$ARGS" in
	"")
		install_all
		;;

        -r|--remove)
                remove_all
                ;;
        -v|--version)
                version_number
                ;;

	-h|--help)
		help_me
		;;
	*)
		echo "$ ${0} {no arguments|-r|-v|-h}"


esac
