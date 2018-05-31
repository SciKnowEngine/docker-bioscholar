# docker-example-tomcat-mysql - BioScholar Edition

A docker compose example project with a MySQL and a Tomcat container linked together to download, unpack and run the BioScholar web application. 

To run: 

	$ docker-compose build

To run: 

	$ docker-compose up

Edit `bmkeg/bmkeg.properties` for JDBC connection properties and the `docker-compose.yml` file for ports, etc.
The MySQL database is built under the `./data` subdirectory, so remove that if you want to rebuild from scratch. 
This is built on MySQL 5.5.

To stop all running containers: 
```
docker stop $(docker ps -aq)
```

To remove and refresh the installation: 
```
docker rm $(docker ps -aq)
```
