#!/bin/bash

liquibase update \
          --url "jdbc:sqlserver://${DATABASE_ADDRESS}:1433;databaseName=${DATABASE_NAME}" \
          --username "${DATABASE_USERNAME}" \
          --password "${DATABASE_PASSWORD}" \
          --changelog-file=liquibase/1-client.sql \
          --offline

# start your application
