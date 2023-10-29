FROM bde2020/hadoop-base


HEALTHCHECK CMD curl -f http://localhost:9870/ || exit 1

COPY WordCount.jar /opt/hadoop/applications/WordCount.jar

ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name
RUN mkdir -p /hadoop/dfs/name
VOLUME /hadoop/dfs/name

COPY run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 9870

CMD ["/run.sh"]
