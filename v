#!/bin/bash

while getopts 's:u:' flags;
do
	case $flags in
		s)
			SEARCH=$OPTARG
			;;
		u)
			URL=$OPTARG
	esac
done

if [ ! ${#SEARCH} -eq 0 ];
then
	vivaldi --app="https://www.google.com/search?q=${SEARCH}"
else
	vivaldi --app="https://${URL}"
fi
