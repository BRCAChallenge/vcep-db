FROM ubuntu:18.04

  
MAINTAINER James Casaletto <james.casaletto@ucsc.edu>

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN groupadd -g 5000 apache  && useradd -u 5000 -g 5000 -s /bin/bash -d /home/apache -m apache

RUN apt-get update && apt-get install -y python3.7 python3-pip python3-dev apache2 expect  

RUN pip3 install --no-cache-dir pymysql 

VOLUME ["/var/www/html", "/etc/apache2"]

CMD apachectl start && tail -f /var/log/apache2/error.log
