#Create hadoop base image
#docker pull bde2020/hadoop-base 
#Create spark base image
#cd ./hadoop/base && docker build . -t spark-base && cd .../...
cd ./build_cluster/spark/base && docker build . -t spark-base && cd ../..
docker-compose up -d