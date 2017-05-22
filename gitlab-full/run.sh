#!/bin/bash

mkdir -p /data/db

/usr/bin/mongod &
exec $(dirname "$0")/bin/catalina.sh run
