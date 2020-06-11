FROM elasticsearch:2.3

WORKDIR /usr/share/elasticsearch

RUN bin/plugin install cloud-aws
RUN bin/plugin install mobz/elasticsearch-head
RUN bin/plugin install analysis-phonetic

COPY elasticsearch.yml config/elasticsearch.yml
COPY elasticsearch-entrypoint.sh /docker-entrypoint.sh

EXPOSE 9200 9300
