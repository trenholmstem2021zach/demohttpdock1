FROM httpd

MAINTAINER Zach Lewis <trenholm.stem2021.zach@gmail.com>

RUN apt-get update
RUN yes | apt install git
RUN yes | apt install build-essential
RUN git clone https://github.com/trenholmstem2021zach/demohttpdock1
COPY ./demohttpdock1/index.html /usr/local/apache2/htdocs/
