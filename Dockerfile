FROM flyway/flyway:9.3.0-alpine

# Install Cloud SQL proxy from Google
RUN wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy ; \
    chmod +x cloud_sql_proxy; \
    mv cloud_sql_proxy /bin ; \
    ls /bin/cloud_sql_proxy ; \
    /bin/cloud_sql_proxy -version

ENTRYPOINT ["/bin/sh","-c"]
