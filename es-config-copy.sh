if [ -f /etc/elasticsearch-config/elasticsearch.extra.yaml ]; then
  cat /etc/elasticsearch-config/elasticsearch.extra.yaml >> /usr/share/elasticsearch/config/elasticsearch.yml
fi