#!/bin/bash

if [ "$MONGO_IN_MEMORY" -eq "1" ]; then
	echo "Use in memory mongo"
	mount -t tmpfs tmpfs /data/db
fi

exec mongod $MONGO_ARG
