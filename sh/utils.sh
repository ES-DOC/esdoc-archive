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
	    	echo -e $now" [INFO] :: ESDOC-ARCHIVE > "$tabs$1
	    else
	    	echo -e $now" [INFO] :: ESDOC-ARCHIVE > "$1
	    fi
	else
	    echo -e $now" [INFO] :: ESDOC-ARCHIVE > "
	fi
}

# Wraps pushd command to suppress stdout.
function pushd ()
{
    command pushd "$@" > /dev/null
}

# Wraps popd command to suppress stdout.
function popd ()
{
    command popd "$@" > /dev/null
}
