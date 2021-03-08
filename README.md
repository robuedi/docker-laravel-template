# Docker-Laravel template


## Setting up

##### 1. Migrate the template files
Run the ```migrate-template``` script in the terminal using this format:

```./migrate-template.sh ../../path/to/laravel-project```
##### 2. Setup the .env file
Set the ```DB_HOST``` from ```.env``` to the ```docker-compose.yml``` database service name (currently ```db```, so you'll have ```DB_HOST=db``` in the ```.env``` file).

##### 3. Start the services
Run the following commands inside the root folder of your Laravel project

```
docker-compose build
docker-compose up -d
```

##### 3. Wait...
A temporary ```initial-script-progress.txt``` file will be created showing the booting progress, wait until the process it's finished, the file will automatically be deleted. 

First time when booting up the services it will take longer as the database will need to be created, migration files will need to be run, composer update the dependencies....

## Client side usage
Go in the browser to [localhost:8001](http://localhost:8001) to view the app (currently the nginx service uses the 8001 port).

Go in the browser to [localhost:7001](http://localhost:7001) to check the database in phpmyadmin (currently the phpmyadmin service uses the 7001 port).

#### phpmyadmin environments info

Comment the ```PMA_USER``` and ```PMA_PASSWORD``` lines from the ```phpmyadmin``` service if you want to disable auto-login when opening the ```phpmyadmin``` in the browser.

## Enjoy by Eduard Robu!
