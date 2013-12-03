#!/bin/bash

curl -o /opt/glassfish-4.0.zip -L http://download.java.net/glassfish/4.0/release/glassfish-4.0.zip
unzip /opt/glassfish-4.0.zip -d /opt

# Endorsed

curl -o /opt/glassfish4/glassfish/lib/endorsed/logback-classic-1.0.13.jar -L http://repo1.maven.org/maven2/ch/qos/logback/logback-classic/1.0.13/logback-classic-1.0.13.jar
curl -o /opt/glassfish4/glassfish/lib/endorsed/logback-core-1.0.13.jar -L http://repo1.maven.org/maven2/ch/qos/logback/logback-core/1.0.13/logback-core-1.0.13.jar
curl -o /opt/glassfish4/glassfish/lib/endorsed/slf4j-api-1.7.5.jar -L http://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.7.5/slf4j-api-1.7.5.jar
curl -o /opt/glassfish4/glassfish/lib/endorsed/jul-to-slf4j-1.7.5.jar -L http://repo1.maven.org/maven2/org/slf4j/jul-to-slf4j/1.7.5/jul-to-slf4j-1.7.5.jar

# modules

curl -o /opt/glassfish4/glassfish/modules/jersey-gf-cdi.jar -L http://repo1.maven.org/maven2/org/glassfish/jersey/containers/glassfish/jersey-gf-cdi/2.0/jersey-gf-cdi-2.0.jar

# domain libs

curl -o /opt/glassfish4/glassfish/domains/domain1/lib/mysql-connector-java-5.1.26.jar -L http://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.26/mysql-connector-java-5.1.26.jar