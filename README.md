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

## Running commands to manipulate and build databases in the docker container.

To log into the mysql docker container: 
```
docker exec -it docker-bioscholar_db_1 bash
```

To build a database using the VPDMf build tools:
```
java -cp /root/vpdmfCore-1.1.5-SNAPSHOT-jar-with-dependencies.jar edu.isi.bmkeg.vpdmf.bin.BuildDatabaseFromVpdmfArchive /root/vpdmf-digitalLibrary-mysql-1.1.5-SNAPSHOT.zip jdbc:mysql://db:3306/evidx root Dttef99 
```
