#!/usr/bin/env bash

# copy files
cp -R ./* $1

# remote migrate file
cd $1
rm migrate-template.sh

exit 0