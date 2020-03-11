docker-compose up -d

# Start cayley container. This is a workaround until we manage how to start cayley with docker-compose.
# See issue here: https://github.com/cayleygraph/cayley/issues/924
docker run -v $PWD/data:/data -p 64210:64210 --link=docker_db_1:db --network=docker_mynet --name cayley -d cayleygraph/cayley:latest -c /data/cayley.yml

docker container ps
