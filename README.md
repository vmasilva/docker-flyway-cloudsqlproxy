# Docker: Flyway + cloudsql auth proxy

This docker was built with the purpose of be executed in gitlab cicd pipeline.  
The goal is to execute a migration, in a secure and recommended way, in a database hosted on CloudSQL, so it includes Flyway and Cloud SQL.  

## Further info about the components:
Flyway: https://flywaydb.org/   
CloudSQL Auth Proxy: https://cloud.google.com/sql/docs/mysql/sql-proxy  

# DockerHub repository
https://hub.docker.com/r/vmasilva/flyway_cloudsql

## Versions published ready to be pulled

| Versions Included                                     | Docker tag                        |
|                                                     - |                                 - |
| Flyway v9.3.0 Alpine + CloudSQL Auth proxy v1.32.0    | flyway-v9.3.0_proxy-v1.32.0       |

# How to use it? 
```
# 1 - spin up the container
docker run -it local-flyway bash

# 2 - run inside the container 
CLOUDSQL_INSTANCE=your-gcp-projectid:us-central1:mytest-instance
KEYFILE=</your_keyfile.json>
./cloud_sql_proxy  -credential_file=$KEYFILE -instances=$CLOUDSQL_INSTANCE=tcp:127.0.0.1:3306

# 3 - run migrations
...
```
