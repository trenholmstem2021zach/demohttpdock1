FROM httpd

MAINTAINER Zach Lewis <trenholm.stem2021.zach@gmail.com>

RUN apt-get update
RUN yes | apt install git
WORKDIR /usr/src/app
RUN git clone https://github.com/trenholmstem2021zach/demohttpdock1
COPY . /usr/local/apache2/htdocs/
CMD ["echo", "docker run -dit --name httpdemo -p 8080:80 httpddemo"]
