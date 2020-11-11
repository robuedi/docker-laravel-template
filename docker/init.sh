#!/bin/bash

touch initial-script-progress.txt

# vendors
composer update >> initial-script-progress.txt 2>&1
composer dump-autoload >> initial-script-progress.txt 2>&1

# fresh migration
php artisan migrate:fresh --seed >> initial-script-progress.txt 2>&1

npm install >> initial-script-progress.txt 2>&1

npm run >> initial-script-progress.txt 2>&1

rm initial-script-progress.txt

exit 0
