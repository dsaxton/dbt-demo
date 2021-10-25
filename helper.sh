#/usr/bin/env bash

pg_dump -h $PGHOST -p $PGPORT -d $PGDATABASENAME -U $PGUSER -n public > test.sql
