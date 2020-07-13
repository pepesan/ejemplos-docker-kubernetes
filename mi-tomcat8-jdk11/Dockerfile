FROM pepesan/mi-ubuntu-jdk11:11.0.7


ENV TOMCAT_VERSION 8.5.57

ENV CATALINA_HOME="/usr/local/tomcat"

ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

ENV JRE_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

RUN apt update

RUN apt -y upgrade

RUN apt -y install wget

RUN apt -y autoclean

RUN wget http://apache.uvigo.es/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz

WORKDIR $CATALINA_HOME

RUN cp -Rv /tmp/apache-tomcat-${TOMCAT_VERSION}/* $CATALINA_HOME


EXPOSE 8080

VOLUME /tmp

VOLUME ${CATALINA_HOME}/conf

VOLUME ${CATALINA_HOME}/logs

VOLUME ${CATALINA_HOME}/webapps


CMD ./bin/catalina.sh run
