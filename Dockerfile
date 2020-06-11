FROM elasticsearch:2.3

WORKDIR /usr/share/elasticsearch
RUN bin/plugin install cloud-aws
RUN bin/plugin install mobz/elasticsearch-head

RUN chmod +x docker-entrypoint.sh

COPY docker-entrypoint.sh /docker-entrypoint.sh
COPY elasticsearch /etc/default/elasticsearch

VOLUME /usr/share/elasticsearch/data

EXPOSE 9200 9300