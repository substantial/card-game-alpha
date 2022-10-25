# CardGameAlpha

Have fun in a low-stakes party game where ethical design considerations are lurking at the end.

This system is currently running at [https://card-game-alpha.gigalixirapp.com/](https://card-game-alpha.gigalixirapp.com/) on Gigalixir's free tier of hosting.

## Development

### Local Dev in Docker

```
docker compose up
```

Run the above and you should be able to access your local dev server at [http://localhost:4000](http://localhost:4000).

### Elixir operations

Use `./scripts/mix.sh` to run `mix` commands via the Phoenix Docker container. For example:

```
❯ ./scripts/mix.sh phx -v
+ docker compose run phoenix mix phx -v
[+] Running 1/0
 ⠿ Container card-game-alpha-db-1  Running                                                                                                                  0.0s
Phoenix v1.6.14
```

Use `./scripts/iex.sh` to run IEx (Elixir's interactive shell/REPL), including to run the server within the shell via `./scripts/iex.sh -S mix phx.server`.

## Operations

### Gigalixir Initial setup

Currently running on Dane's free tier Gigalixir account. Free setup was performed according to [the Gigalixir free tier instructions](https://gigalixir.readthedocs.io/en/latest/getting-started-guide.html#prerequisites).

#### API Key

`cp docker/gigalixir/.netrc.template docker/gigalixir/.netrc` and replace the password values with Dane's API key.

#### Git Remote

Add the Gigalixir remote git repository with the helper script that executes via a Docker container:

```
./scripts/gigalixir.sh git:remote card-game-alpha
```

#### Confirm Gigalixir

Run the following `./scripts/gigalixir.sh ps` to get the current status of the cloud system. It should look something like this:

```
{
  "cloud": "gcp",
  "pods": [
    {
      "lastState": {},
      "name": "card-game-alpha-fdc78d7b5-8lflt",
      "sha": "f6e5857323f8b2afa1fd5d1607024803f354b8c2",
      "status": "Healthy",
      "version": "1"
    }
  ],
  "region": "v2018-us-central1",
  "replicas_desired": 1,
  "replicas_running": 1,
  "size": 0.3,
  "stack": "gigalixir-20",
  "unique_name": "card-game-alpha"
}
```

### Gigalixir Deploy

```
git push gigalixir
```

Push committed changes on `main` to Gigalixir for deployment to [https://card-game-alpha.gigalixirapp.com/](https://card-game-alpha.gigalixirapp.com/). Watch the build information relayed after pushing to the `gigalixir` remote. After a successful push, you can use `./scripts/gigalixir.sh ps` to see the status of the system.

## Standard Phoenix Instructions

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
