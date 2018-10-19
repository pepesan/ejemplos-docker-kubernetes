FROM pepesan/mi-ubuntu:20181017

RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:webupd8team/java

RUN apt-get -y update

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections

RUN apt-get install -y oracle-java8-installer

RUN apt-get -y autoclean

CMD ["/bin/bash"]
