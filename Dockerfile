FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.2

RUN elasticsearch-plugin install --batch repository-s3

COPY --chown=1000:0 es-config-copy.sh /usr/local/bin/es-config-copy.sh

RUN chgrp 0 /usr/local/bin/es-config-copy.sh && \
    chmod 0775 /usr/local/bin/es-config-copy.sh

CMD ["/usr/local/bin/es-config-copy.sh"]
