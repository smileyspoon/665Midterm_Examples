#!/bin/bash



ARG=${1}
versionNumber="1.0.0"

function version() {

	echo versionNumber
}

function help_me() {

cat << ThisDoc

		This is how to use this function
		$ ${0} no arguments|-h|--help|-i|--install|-u|--uninstall|-v|--version
		
		

ThisDoc

}

function install_all() {


}

function uninstall_all() {


}


case "$ARG" in 
	-h|--help)
		help_me

	*)
		"Incorrect, do it like this:  $ ${0} no arguments|-h|--help|-i|--install|-u|--uninstall|-v|--version"

