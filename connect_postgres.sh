#!/bin/bash

psql -h $PGHOST -p $PGPORT -d $PGDATABASENAME -U $PGUSER
