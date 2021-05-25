#!/bin/bash

# Wraps standard echo by adding application prefix.
log()
{
	local NOW
	local TABS

	NOW=$(date +%Y-%m-%dT%H:%M:%S:000000)
	TABS=''

	if [ "$1" ]; then
		if [ "$2" ]; then
			for ((i=0; i<$2; i++))
			do
				TABS+='\t'
			done
	    	echo -e "$NOW [INFO] :: ARCHIVE :: $TABS$1"
	    else
	    	echo -e "$NOW [INFO] :: ARCHIVE :: $1"
	    fi
	else
	    echo -e "$NOW [INFO] :: ARCHIVE :: "
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
