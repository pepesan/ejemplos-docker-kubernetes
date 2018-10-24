FROM pepesan/mi-ubuntu-jdk8:latest


ENV TOMCAT_VERSION 8.5.34

ENV CATALINA_HOME="/usr/local/tomcat"

ENV JAVA_HOME="/usr/lib/jvm/java-8-oracle"

ENV JRE_HOME="/usr/lib/jvm/java-8-oracle/jre"

RUN apt-get update

RUN apt-get -y upgrade

RUN apt-get -y install wget

RUN wget http://apache.uvigo.es/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz

WORKDIR $CATALINA_HOME

RUN cp -Rv /tmp/apache-tomcat-${TOMCAT_VERSION}/* /usr/local/tomcat/


EXPOSE 8080

VOLUME /tmp

VOLUME ${CATALINA_HOME}/conf

VOLUME ${CATALINA_HOME}/logs

VOLUME ${CATALINA_HOME}/webapps


CMD /usr/local/tomcat/bin/catalina.sh run
