# chamerling/glassfish4sirocco
#
# VERSION               1.0

FROM ubuntu:latest
MAINTAINER Christophe Hamerling "christophe.hamerling@gmail.com"

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update


# Set the mysql configuration to avoid prompts
RUN echo "mysql-server-5.5 mysql-server/root_password password root123" | debconf-set-selections
RUN echo "mysql-server-5.5 mysql-server/root_password_again password root123" | debconf-set-selections
RUN echo "mysql-server-5.5 mysql-server/root_password seen true" | debconf-set-selections
RUN echo "mysql-server-5.5 mysql-server/root_password_again seen true" | debconf-set-selections

RUN apt-get install -y zip wget curl build-essential mysql-server-5.5

ADD resources/cfgmysql.sh /tmp/
RUN chmod +x /tmp/cfgmysql.sh
RUN /tmp/cfgmysql.sh
RUN rm /tmp/cfgmysql.sh

ADD resources/start.sh /
RUN chmod +x /start.sh

#RUN wget http://download.java.net/glassfish/4.0/release/glassfish-4.0.zip
#RUN mv /glassfish-4.0.zip /opt; cd /opt; unzip glassfish-4.0.zip; rm glassfish-4.0.zip

# Install glassfish from archive

#ENV GF_HOME /opt/glassfish4
#ENV PATH $PATH:$JAVA_HOME/bin:$GF_HOME/bin
#RUN cp /sirocco/etc/glassfish_config/* /opt/glassfish4/glassfish/domains/domain1/config

#ADD etc/mysql-listen.cnf /etc/mysql/conf.d/mysql-listen.cnf
#CMD ["/usr/bin/mysqld_safe"]

#ADD etc/sirocco_init.sql /sirocco_init.sql
#RUN mysql -u root -proot </sirocco_init.sql

#ADD /sirocco/etc/db/sirocco_db.sql /sirocco_db.sql
#RUN mysql -usirocco -psirocco < /sirocco_init.sql

# RUN wget sirocco-VERSION.ear

# RUN asadmin start-domain
# RUN asadmin deploy sirocco-VERSION.ear


# Expose public and admin ports
# EXPOSE 3306 4848 8080 8181 8686 7676 3700 3820 3920
EXPOSE 3306

CMD ["/start.sh"]

