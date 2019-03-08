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
