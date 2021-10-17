FROM ubuntu:20.04
WORKDIR /home/mongobi
RUN apt-get update
RUN apt-get install -y openssl ca-certificates  libssl-dev libgssapi-krb5-2 wget
RUN wget https://info-mongodb-com.s3.amazonaws.com/mongodb-bi/v2/mongodb-bi-linux-x86_64-ubuntu1804-v2.13.1.tgz
RUN tar -xvzf mongodb-bi-linux-x86_64-ubuntu1804-v2.13.1.tgz
WORKDIR /home/mongobi/mongodb-bi-linux-x86_64-ubuntu1804-v2.13.1
RUN mkdir /logs
RUN ls
RUN echo $PATH
RUN install -m755 bin/mongo* /usr/local/bin/
EXPOSE 3307
CMD ["mongosqld", "--config=/home/mongobi/mongosqld.conf"]