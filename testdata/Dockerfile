FROM postgres:latest

COPY entrypoint.sh /usr/local/bin/
COPY data.sql /data.sql
COPY pipeline_data.sql /pipeline_data.sql

ENTRYPOINT entrypoint.sh
