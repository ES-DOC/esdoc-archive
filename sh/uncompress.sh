#!/bin/bash

# Import utils.
source $ESDOC_ARCHIVE_HOME/sh/utils.sh

# Main entry point.
main()
{
	log "uncompression: begins ..."

	pushd $ESDOC_ARCHIVE_HOME
	rm -rf ./esdoc
	cat docs_* | tar xz
	popd -1

	log "uncompression: complete"
}

# Invoke entry point.
main
