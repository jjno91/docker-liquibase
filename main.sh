#!/bin/bash

# https://www.liquibase.org/get-started/best-practices
liquibase update \
          --url "jdbc:sqlserver://${DATABASE_ADDRESS}" \
          --username "${DATABASE_USERNAME}" \
          --password "${DATABASE_PASSWORD}" \
          --driver "com.microsoft.sqlserver.jdbc.SQLServerDriver" \
          --changelog-file=liquibase/1-client.sql \
          --log-level "debug"

# start your application
