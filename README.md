# Docker-Laravel template

Make a new laravel project, add this files/folder to the project.
Set the ```DB_HOST``` from ```.env``` to the ```docker-compose.yml``` service name (currently ```db```)
Run the commands

```
docker-compose build
docker-compose up -d
```

Go in browser to [localhost:8000](http://localhost:8000) (currently the nginx service uses the 8000 port).
Enjoy.