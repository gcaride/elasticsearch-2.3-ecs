FROM elasticsearch:2.3

WORKDIR /usr/share/elasticsearch

RUN bin/plugin install cloud-aws
RUN bin/plugin install mobz/elasticsearch-head
RUN bin/plugin install analysis-phonetic

COPY elasticsearch.yml /etc/default/elasticsearch.yml

VOLUME /usr/share/elasticsearch/data

EXPOSE 9200 9300
