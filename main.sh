#!/bin/bash -ex

# https://www.liquibase.org/get-started/best-practices
liquibase update \
          --url "jdbc:sqlserver://${DATABASE_ADDRESS};databaseName=${DATABASE_NAME:-master};encrypt=${DATABASE_ENCRYPT:-true}" \
          --username "${DATABASE_USERNAME:-sa}" \
          --password "${DATABASE_PASSWORD}" \
          --changelog-file liquibase.yml \
          --log-level FINE

# start your application
echo "start your application"
