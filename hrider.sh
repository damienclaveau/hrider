#!/bin/bash
cp /etc/hadoop/conf/core-site.xml src/main/resources/
cp /etc/hadoop/conf/hdfs-site.xml src/main/resources/
cp /etc/hadoop/conf/hbase-site.xml src/main/resources/
mvn clean package -P hdp25
# kinit is required
java  -Djava.security.krb5.conf=/etc/krb5.conf  -jar target/h-rider-1.0.9-SNAPSHOT.jar
# conect to zookeeper quorum twice !

