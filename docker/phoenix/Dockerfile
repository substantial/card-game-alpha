FROM elixir:1.11

RUN apt-get update && \
  apt-get install -y \
  inotify-tools \
  postgresql-client

RUN mix local.hex --force

CMD ["/app/docker/phoenix/start.sh"]
