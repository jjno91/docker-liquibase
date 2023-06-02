#!/bin/bash

# https://www.liquibase.org/get-started/best-practices
liquibase update \
          --url "jdbc:sqlserver://${DATABASE_ADDRESS};encrypt=false" \
          --username "${DATABASE_USERNAME:-sa}" \
          --password "${DATABASE_PASSWORD}" \
          --database "${DATABASE_NAME:-master}" \
          --changelog-file liquibase/1-client.sql \
          --log-level FINE

# start your application
echo "start your application"
