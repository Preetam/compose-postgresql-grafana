FROM postgres:latest

COPY entrypoint.sh /usr/local/bin/
COPY data.sql /data.sql

ENTRYPOINT entrypoint.sh
