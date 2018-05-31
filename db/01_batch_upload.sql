SET FOREIGN_KEY_CHECKS=0;
LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/Journal.dat' REPLACE INTO TABLE Journal FIELDS TERMINATED BY '\t\t\t' LINES TERMINATED BY '\n\n\n' (vpdmfId,journalTitle,nlmId,abbr,ISSN);
LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/ViewTable.dat' REPLACE INTO TABLE ViewTable FIELDS TERMINATED BY '\t\t\t' LINES TERMINATED BY '\n\n\n' (vpdmfId,viewType,locked,vpdmfLabel,vpdmfUri,namespace,thumbnail,indexTuple);
INSERT INTO authorities (username, authority) VALUES('evidx','ROLE_USER');
INSERT INTO users (username, password, enabled) VALUES('evidx','Iamthewalrus',1);
SET FOREIGN_KEY_CHECKS=1;