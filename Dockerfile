FROM httpd

MAINTAINER Zach Lewis <trenholm.stem2021.zach@gmail.com>

RUN apt-get update
RUN yes | apt install git
RUN yes | apt install build-essential
RUN git clone https://github.com/trenholmstem2021zach/fastText
COPY ./public-html/ /usr/local/apache2/htdocs/
WORKDIR /usr/src/myapp
RUN ln -s /fastText
CMD ls
© 2022 GitHub, Inc.
Terms
