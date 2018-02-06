FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.2

RUN elasticsearch-plugin install --batch io.fabric8:elasticsearch-cloud-kubernetes:5.4.2

CMD ["/bin/bash", "bin/es-docker"]

EXPOSE 9200 9300