#!/bin/bash

# https://www.liquibase.org/get-started/best-practices
liquibase update \
          --url "jdbc:sqlserver://${DATABASE_ADDRESS};encrypt=false" \
          --username "${DATABASE_USERNAME}" \
          --password "${DATABASE_PASSWORD}" \
          --driver com.microsoft.sqlserver.jdbc.SQLServerDriver \
          --changelog-file liquibase/1-client.sql \
          --log-level FINE

# start your application
