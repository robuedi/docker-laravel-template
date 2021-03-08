#!/bin/bash

if [ ! -f initial-script-progress.txt ]; then
    touch initial-script-progress.txt
fi

echo '>>> Boot up started!' > initial-script-progress.txt 2>&1

# vendors
echo '>>> Running composer update!' >> initial-script-progress.txt 2>&1
composer update >> initial-script-progress.txt 2>&1

# fresh migration
# php artisan migrate:fresh --seed >> initial-script-progress.txt 2>&1
echo '>>> Running php artisan migrate!' >> initial-script-progress.txt 2>&1
php artisan migrate >> initial-script-progress.txt 2>&1

echo '>>> Running npm install & run!' >> initial-script-progress.txt 2>&1
npm install >> initial-script-progress.txt 2>&1

npm run prod >> initial-script-progress.txt 2>&1

echo '>>> Boot up finished!' >> initial-script-progress.txt 2>&1

exit 0
