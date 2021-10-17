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


## Make Dockerfile and docker-compose file :

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

After this we are adding some data into mongodb for testing purpose.

```
curl https://cube.dev/downloads/events-dump.zip > events-dump.zip

unzip events-dump.zip

docker exec mongo mongorestore dump/stats/events.bson -u root -p admin123  # please mount volume of dump if you want to restore it from local
```

## Confirm all things are up and running.

