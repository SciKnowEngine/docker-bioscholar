FROM tomcat:8.0-jre8

RUN mkdir /root/workingDirectory    

# install Bioscholar from Github (NOT FROM A LOCAL FILE).  
RUN wget -O /root/vpdmf-digitalLibrary-mysql-1.1.5-SNAPSHOT.zip "http://www-bcf.usc.edu/~gully/downloads/vpdmf-digitalLibrary-mysql-1.1.5-SNAPSHOT.zip"
RUN wget -O /usr/local/tomcat/webapps/bioscholar.war "https://github.com/BMKEG/bioscholar/releases/download/v1.1.5/bioscholar.war"
RUN echo "ARGH"
RUN wget -O /root/vpdmfCore-1.1.5-SNAPSHOT-jar-with-dependencies.jar "http://www-bcf.usc.edu/~gully/downloads/vpdmfCore-1.1.5-SNAPSHOT-jar-with-dependencies.jar"

COPY ./startup.sh /root/startup.sh
CMD ["/root/startup.sh"]
