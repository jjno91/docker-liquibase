#!/bin/bash

cd sql || exit 1
liquibase --changelog-file=liquibase/liquibase.yaml update --url $URL --username $USERNAME --password $PASSWORD

# start your application
