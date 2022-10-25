#!/bin/bash

mix local.rebar --force
mix deps.get

# TODO: This may not be necessary. Dane Weber 2022-10-24
# Wait until Postgres is ready.
while ! pg_isready -q -h $PGHOST -p $PGPORT -U $PGUSER
do
  echo "$(date) - waiting for database to start"
  sleep 2
done

# Create, migrate, and seed database if it doesn't exist.
mix ecto.setup

mix phx.server
