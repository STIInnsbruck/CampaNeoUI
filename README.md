# campaneo

Campaneo Flutter application.

## System Overview
```
                               +
                               |
                               |
                               |
+------------------+           |                  +-------------------+
|                  |           |                  |                   |
|                  |           |                  |                   |
|                  +----------------------------->+   cayley          +-------------------+
|    Flutter app   |           |                  |                   |                   |
|                  |           |                  |                   |                   v
|                  |           |       +--------->+                   |         +---------+------+
+--------+---------+           |       |          +-------------------+         |                |
         ^                     |       |                                        |                |
         |                     |       |                                        |  MongoDB       |
         |                     |       |                                        |                |
         |                     |       |                                        |                |
+--------+---------+           |       |          +-------------------+         |                |
|                  |           |       |          |                   |         |                |
|                  +-------------------+          | mongo-express     |         +---------+------+
|                  |           |                  |                   |                   ^
|    Browser       +----------------------------->+                   |                   |
|                  |           |                  |                   +-------------------+
|                  |           |                  |                   |
+------------------+           |                  +-------------------+
                               |
                               |
                               +

```

## Frontend

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Backend

This project uses [Cayley](https://cayley.gitbook.io/cayley/) for storing and serving 
information modeled as a Knowledge Graph in JSON-LD. Cayley behaves as a middleware in this case,
while the data is stored in [MongoDB](https://www.mongodb.com/). We also include an
instance of [Mongo Express](https://github.com/mongo-express/mongo-express) for a quick overview of the mongodb content.

The backend services are included in docker containers and can be started and stopped
by using the commands included in the docker folder within this repo.

### Prerequisites

These scripts assume that docker and docker-compose are available in in your system. You can
install them following the official documentation:

- [Docker documentation](https://docs.docker.com/install/)
- [Docker Compose documentation](https://docs.docker.com/compose/install/)

### Running the scripts

1. Open a terminal and go to the 'docker' folder within this repo.
2. Give execution permissions to 'start.sh' and 'stop.sh' by executing:
```
chmod +x start.sh && chmod +x stop.sh
```
3. For starting cayley execute:
```
sudo ./start.sh
```
This will start 3 different docker containers corresponding to cayley, mongodb and mongo-express.
The script will pring the IPs and Ports where the different services are running by default. You
can open them with your browser in the following addresses:
- cayley: [0.0.0.0:64210](0.0.0.0:64210)
- mongo-express: [0.0.0.0:8081](0.0.0.0:8081)
4. For stoping the docker containers just execute
```
sudo ./stop.sh
```
