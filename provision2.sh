#!/bin/bash



ARG=${1}
versionNumber="1.0.0"

function version() {

	echo $versionNumber
}

function help_me() {

cat << ThisDoc

		This is how to use this function
		$ ${0} no arguments|-h|--help|-u|--uninstall|-v|--version
		
		

ThisDoc

}

function install_all() {

	echo "install"

}

function uninstall_all() {


	echo "uninstall"
}


case "$ARG" in 
	-v|--version)
		version
		;;
	-h|--help)
		help_me
		;;
	"")
		install_all
		;;
	-u|--uninstall)
		uninstall_all
		;;

	*)
		echo "Incorrect, do it like this:  $ ${0} no arguments|-h|--help|-u|--uninstall|-v|--version"

esac
