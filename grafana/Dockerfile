FROM grafana/grafana:latest

COPY ./postgres.yml /etc/grafana/provisioning/datasources/postgres.yml
COPY ./dashboards.yml /etc/grafana/provisioning/dashboards/dashboards.yml
COPY ./dashboard.json /var/lib/grafana/dashboards/dashboard.json
