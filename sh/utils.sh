#!/bin/bash

# Wraps standard echo by adding application prefix.
log()
{
	declare now=`date +%Y-%m-%dT%H:%M:%S`
	declare tabs=''
	if [ "$1" ]; then
		if [ "$2" ]; then
			for ((i=0; i<$2; i++))
			do
				declare tabs+='\t'
			done
	    	echo -e $now" [INFO] :: CDF2CIM-CLIENT > "$tabs$1
	    else
	    	echo -e $now" [INFO] :: CDF2CIM-CLIENT > "$1
	    fi
	else
	    echo -e $now" [INFO] :: CDF2CIM-CLIENT > "
	fi
}
