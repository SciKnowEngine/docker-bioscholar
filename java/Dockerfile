FROM openjdk:8

RUN set -x && apt-get update && apt-get install -y --no-install-recommends ca-certificates wget 
RUN wget -O /root/vpdmfGenerator-1.1.5-SNAPSHOT-jar-with-dependencies.jar "http://www-bcf.usc.edu/~gully/downloads/vpdmfGenerator-1.1.5-SNAPSHOT-jar-with-dependencies.jar" \
	&& wget -O /root/vpdmf-digitalLibrary-mysql-1.1.5-SNAPSHOT.zip "http://www-bcf.usc.edu/~gully/downloads/vpdmf-digitalLibrary-mysql-1.1.5-SNAPSHOT.zip" 
RUN apt-get purge -y --auto-remove ca-certificates wget

CMD ["startup.sh"] 