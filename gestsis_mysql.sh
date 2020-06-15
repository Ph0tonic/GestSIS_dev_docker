DB_DATABASE=gestsis
DB_USERNAME=gestsis
DB_USERNAME=root
DB_PASSWORD=gestsis
DB_PASSWORD=
DB_HOST=db
DB_PORT=3306

docker run --rm -it --name db -e MYSQL_DATABASE=gestsis -e MYSQL_ROOT_PASSWORD=pwd -e MYSQL_PASSWORD=pwd -e MYSQL_USER=gestsis --expose 3306 mysql
