FROM pepesan/mi-ubuntu-jdk8:latest

# Tutorial original: https://tecadmin.net/install-tomcat-9-on-ubuntu/

ENV TOMCAT_VERSION 9.0.12

RUN apt-get update

RUN apt-get -y upgrade

WORKDIR /usr/local
RUN /bin/bash -c 'wget http://apache.rediris.es/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz'
RUN tar xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz
RUN mv apache-tomcat-${TOMCAT_VERSION} apache-tomcat9

ENV CATALINA_HOME="/usr/local/apache-tomcat9"

ENV JAVA_HOME="/usr/lib/jvm/java-8-oracle"

ENV JRE_HOME="/usr/lib/jvm/java-8-oracle/jre"

WORKDIR /usr/local/apache-tomcat9

RUN chmod +x ./bin/startup.sh

EXPOSE 8080

VOLUME /tmp

VOLUME $CATALINA_HOME/conf

VOLUME $CATALINA_HOME/logs

VOLUME $CATALINA_HOME/webapps

CMD ["./bin/startup.sh"]
