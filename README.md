# compose-postgresql-grafana

PostgreSQL + Grafana with test data running in Docker Compose.

This is the repo used for the [(PDF) Visualizing Data in PostgreSQL With Grafana](https://postgresconf.org/system/events/document/000/000/964/Visualizing_Data_in_PostgreSQL_With_Grafana.pdf) talk I gave at PostgresConf NYC 2019.

![Screenshot](https://user-images.githubusercontent.com/379404/54157577-d3c5ed80-4405-11e9-875e-d6253789dbd9.png)

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
