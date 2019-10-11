# start master
docker run \
 --network=spark_nw \
 -h spark-master \
 -v $(pwd)/spark-defaults.conf:/opt/spark/conf/spark-defaults.conf \
 --name spark-master \
 -d swr.cn-north-4.myhuaweicloud.com/gaojx/spark-on-k8s:2.3.3 \
 /bin/bash -c \
 "/spark-master"

 #-p 7077:7077 \
 #-p 8080:8080 \
 #-p 5005:5005 \
 #-p 4040:4040 \
 #-p 37077:37077 \
 #-p 37078:37078 \
