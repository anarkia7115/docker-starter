#!/bin/bash

topic=$1                                                                                                                  

echo "creating $topic"                                                                                                   

. env.sh

docker run -it swr.cn-north-4.myhuaweicloud.com/gaojx/kafka:2.12-2.2.0 /opt/kafka/bin/kafka-topics.sh --create \
    --bootstrap-server $KFK_HOST:9092 \
    --replication-factor 1 \
    --partitions 15 \
    --topic $topic
