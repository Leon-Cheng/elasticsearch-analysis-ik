FROM elasticsearch:7.5.1

MAINTAINER Leon Cheng 'leonk0614@gmail.com'

ENV VERSION=7.5.1

WORKDIR /usr/share/elasticsearch

RUN curl -L -O https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${VERSION}/elasticsearch-analysis-ik-${VERSION}.zip && \
    bin/elasticsearch-plugin install --batch file:///usr/share/elasticsearch/elasticsearch-analysis-ik-${VERSION}.zip && \
    rm elasticsearch-analysis-ik-${VERSION}.zip

