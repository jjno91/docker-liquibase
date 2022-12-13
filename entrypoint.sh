#!/bin/bash

cd sql
liquibase --changelog-file=liquibase/liquibase.yaml update --url $URL --username $USERNAME --password $PASSWORD

# start your application
