. env.sh

docker run -p 2181:2181 \
    --name zk --network="bioner" --restart always -d zookeeper

docker run -p 9092:9092 \
    -e "BROKER_ID=0" \
    -e "LOG_DIR=/kafka_log" \
    -e "ZOOKEEPER_CONNECT=zk:2181" \
    --network="bioner" \
    --name kafka -d swr.cn-north-4.myhuaweicloud.com/gaojx/kafka:2.12-2.2.0 /bin/bash -c \
    "cd /opt/kafka && \
    export HOST_IP=$BIONER_HOST && \
    envsubst < config/server.properties.template > config/server.properties && \
    bin/kafka-server-start.sh config/server.properties"
