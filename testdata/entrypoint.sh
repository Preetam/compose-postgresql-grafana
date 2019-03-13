#!/usr/bin/env bash
set -e

run_query() {
  PGPASSWORD="postgres" psql \
  -v ON_ERROR_STOP=1 \
  -h postgres \
  --username postgres \
  --dbname postgres \
  -c "$1"
}

run_file() {
  PGPASSWORD="postgres" psql \
  -v ON_ERROR_STOP=1 \
  -h postgres \
  --username postgres \
  --dbname postgres \
  -f "$1"
}

# Wait until the instance is ready
for try in {1..10}; do
  run_query '\q' && break
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

run_file /data.sql

for i in {1..100}; do
  run_file /pipeline_data.sql
done

# fail a few tasks
run_query "WITH cte AS (SELECT project, stage FROM pipeline_stages ORDER BY random() LIMIT 10) \
           UPDATE pipeline_stages SET failed = 't' FROM cte WHERE \
           (pipeline_stages.project, pipeline_stages.stage) = (cte.project, cte.stage)"
