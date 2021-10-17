# Create cubejs application with mongo-bi connector and mongodb database


## Update library : 

```
sudo apt-get update
```

## Install docker and docker-compose:

```
curl https://get.docker.com | sudo bash

sudo usermod -aG docker ubuntu

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version
```

Reconnect with your instance


## make Dockerfile and docker-compose file :

- create Dockerfile for create image for mongo-bi connector

- create docker-compose.yml for our application.

- create mongosqld.conf for mongo-bi connector configuration

- create.env file for cubejs configuration

Run follwing commands after create all file:

```
openssl req -newkey rsa:2048 -nodes -keyout key.pem -x509 -days 365 -out certificate.pem 

cat key.pem certificate.pem > mongo.pem #used for ssl

sudo docker-compose build

docker-compose up -d
```

## confirm all things are up and running.

