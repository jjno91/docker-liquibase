#!/bin/bash

# https://www.liquibase.org/get-started/best-practices
liquibase update \
          --url "jdbc:sqlserver://${DATABASE_ADDRESS};encrypt=false" \
          --username "${DATABASE_USERNAME}" \
          --password "${DATABASE_PASSWORD}" \
          --changelog-file liquibase/1-client.sql \
          --database test \
          --log-level FINE

# start your application
