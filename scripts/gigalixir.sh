#!/usr/bin/env bash
# strict mode
IFS=$'\n\t'
set -euxo pipefail

docker compose run gigalixir "$@"
