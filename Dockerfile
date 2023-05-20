FROM postgres:14.2-alpine3.15

ENV POSTGRES_PASSWORD=secret

COPY Caddyfile ./

COPY site.html ./

RUN echo hello_docker
