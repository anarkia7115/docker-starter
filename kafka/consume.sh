#!/bin/bash
topic=$1                                                                                                                  

echo "consuming $topic"                                                                                                   

. env.sh

docker run --network=bioner -it swr.cn-north-4.myhuaweicloud.com/gaojx/kafka:2.12-2.2.0 /opt/kafka/bin/kafka-console-consumer.sh --topic=$topic --bootstrap-server=$BIONER_HOST:9092 --group=console --from-beginning
