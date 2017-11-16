FROM traefik:1.4.3-alpine

RUN apk --no-cache add curl tar

WORKDIR /filebeat
RUN curl -sfS https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.5.1-linux-x86_64.tar.gz \
    | tar -xz --strip-components=1

WORKDIR /
