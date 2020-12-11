#!/bin/bash

# Import utils.
source $ESDOC_ARCHIVE_HOME/sh/utils.sh

# Main entry point.
main()
{
	log "deleting archived documents ..."

	if [ "$2" ]; then
		declare target=$ESDOC_ARCHIVE_HOME/esdoc/$1/$2
		rm -rf $target/*.*
	else
		declare target=$ESDOC_ARCHIVE_HOME/esdoc/$1
		rm -rf $target
	fi

	log "deleted archived documents from "$target
}

# Invoke entry point.
main $1 $2