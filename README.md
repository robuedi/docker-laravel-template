# Docker-Laravel template

#### Setting up
To set up docker make a new laravel project and add this files/folder to the project.

Set the ```DB_HOST``` from ```.env``` to the ```docker-compose.yml``` service name (currently ```db```)

Comment the ```PMA_USER``` and ```PMA_PASSWORD``` lines from the ```phpmyadmin``` service if you want to disable auto-login when opening the ```phpmyadmin``` in browser.

#### Starting the app
Run the commands

```
docker-compose build
docker-compose up -d
```

#### Post instructions

To run migrations
 ```
 docker-compose exec app bash
 php artisan migrate
 ```

#### Navigating to the services (app/db)
Go in browser to [localhost:8000](http://localhost:8000) the view the app (currently the nginx service uses the 8000 port).

Go in browser to [localhost:7000](http://localhost:7000) to check the database in phpmyadmin (currently the phpmyadmin service uses the 7000 port).

Enjoy.