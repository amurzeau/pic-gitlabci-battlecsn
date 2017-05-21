#!/bin/bash

mkdir -p /data/db

/usr/bin/mongod &
exec bin/catalina.sh run
