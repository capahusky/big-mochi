# Source: https://blog.logrocket.com/how-to-build-a-restful-api-with-docker-postgresql-and-go-chi/

# During development, after changing migrations, please do the following:
$ docker-compose stop server
$ docker-compose build server
$ docker-compose up --no-start server
$ docker-compose start server
