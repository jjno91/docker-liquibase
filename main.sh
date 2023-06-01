#!/bin/bash

liquibase --changelog-file=liquibase/1-client.sql update --url "${URL}" --username "${USERNAME}" --password "${PASSWORD}"

# start your application
