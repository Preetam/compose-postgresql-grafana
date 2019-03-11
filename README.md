# compose-postgresql-grafana

PostgreSQL + Grafana with test data running in Docker Compose.

## Getting started

Run Docker Compose:

```
docker-compose up --build
```

Visit http://localhost:3000/ and use the default credentials of `admin` / `admin`.


### Connect to PostgreSQL with psql

```
docker run -it --rm --link postgres:postgres postgres psql -h postgres -U postgres
```

## License

MIT
