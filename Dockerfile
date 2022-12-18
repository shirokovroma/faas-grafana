FROM grafana/grafana:latest

COPY dashboards /etc/dashboards
COPY ./provisioning /etc/grafana/provisioning/
ENV GF_SECURITY_ADMIN_PASSWORD=admin \
    GF_SECURITY_ADMIN_USER=admin

EXPOSE 3000