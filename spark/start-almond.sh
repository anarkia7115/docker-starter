docker run \
	--network=spark_nw \
    -h almond \
    --name almond \
	-it -p 8888:8888 \
    -p 4040:4040 \
    almondsh/almond:latest
