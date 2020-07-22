FROM ubuntu:18.04

  
MAINTAINER James Casaletto <james.casaletto@ucsc.edu>

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN groupadd -g 5000 mysql  && useradd -u 5000 -g 5000 -s /bin/bash -d /home/mysql -m mysql

RUN apt-get update && apt-get install -y python3.7 python3-pip python3-dev apache2 expect mysql-server 

COPY configure-mysql.sh /tmp

RUN /etc/init.d/mysql start && /tmp/configure-mysql.sh 

RUN apt-get remove -y expect && rm /tmp/configure-mysql.sh

RUN update-rc.d mysql defaults 

RUN rm -rf /etc/mysql && mkdir /etc/mysql

RUN pip3 install --no-cache-dir pymysql 

VOLUME ["/var/lib/mysql", "/etc/mysql"]

CMD service mysql start && tail -f /var/log/mysql/error.log
