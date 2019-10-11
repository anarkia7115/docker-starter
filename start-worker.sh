# start worker
docker run \
 -v $(pwd)/spark-defaults-worker.conf:/opt/spark/conf/spark-defaults.conf \
 --name spark-worker \
 -d swr.cn-north-4.myhuaweicloud.com/gaojx/spark-on-k8s:2.3.3 \
 /bin/bash -c \
 "/spark-worker"

 #-p 7078:7078 \
 #-p 8081:8081 \
 #-p 37078:37078 \
