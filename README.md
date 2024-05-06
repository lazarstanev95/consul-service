# consul-service

# build the docker image
docker build -t consul-service --no-cache .

# run docker container
docker-compose up -d

# consul key / Value import
consul kv import @/config.json

# consul key / Value export
consul kv export > /config.json