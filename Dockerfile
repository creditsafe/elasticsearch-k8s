FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.2

RUN elasticsearch-plugin install --batch https://s3-eu-west-1.amazonaws.com/search-tribe-public/readonlyrest-1.16.15_es5.4.2.zip

RUN elasticsearch-plugin install --batch repository-s3
