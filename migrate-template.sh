#!/usr/bin/env bash

# copy files
cp -R ./* $1

cd $1

# set storage, cache permissions (they are kept when mounting the project as volume inside the containers)
sudo chmod -R 777 storage/
sudo chmod -R 777 bootstrap/cache

echo 'initial-script-progress.txt' >> .gitignore

# remote migrate file
rm migrate-template.sh

exit 0