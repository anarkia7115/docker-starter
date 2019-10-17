# start worker
docker run \
 --network=spark_nw \
 -h spark-worker \
 -v $(pwd)/log4j.properties:/opt/spark/conf/log4j.properties \
 -v $(pwd)/simple-project_2.12-1.0.jar:/simple-app.jar \
 -p 8081:8081 \
 -e SPARK_DIST_CLASSPATH="/opt/hadoop/lib/native" \
 --name spark-worker \
 -d \
 swr.cn-north-4.myhuaweicloud.com/gaojx/spark-on-k8s:2.4.4-2.12 \
 /bin/bash -c \
 "/spark-worker"

#  -v $(pwd)/spark-defaults-worker.conf:/opt/spark/conf/spark-defaults.conf \
 #-p 7078:7078 \
 #-p 8081:8081 \
 #-p 37078:37078 \
