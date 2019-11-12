export BIOREL_HOST="172.17.0.1"

docker run -p 9092:9092  \
  -e "BROKER_ID=0"  \
  -e "LOG_DIR=/kafka_log"  \
  -e "ZOOKEEPER_CONNECT=zk:2181"  \
  --name kafka -d kafka:2.12-2.2.0 /bin/bash -c  \
  "cd /opt/kafka &&  \
  export HOST_IP=$BIOREL_HOST &&  \
  envsubst < config/server.properties.template > config/server.properties &&  \
  bin/kafka-server-start.sh config/server.properties"

