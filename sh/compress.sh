#!/bin/bash

# Import utils.
source $ESDOC_ARCHIVE_HOME/sh/utils.sh

# Main entry point.
main()
{
	log "compression: begins ..."

	pushd $ESDOC_ARCHIVE_HOME
	rm -rf docs_*
	tar cz esdoc | split -b 10m - docs_
	popd -1

	log "compression: complete"
}

# Invoke entry point.
main
