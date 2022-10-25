# CardGameAlpha

## Initial Setup

### Gigalixir setup

Currently running on Dane's free tier Gigalixir account.

#### API Key

`cp docker/gigalixir/.netrc.template docker/gigalixir/.netrc` and replace the password values with Dane's API key.

#### Git Remote

Add the Gigalixir remote git repository with the helper script that executes via a Docker container:

```
./scripts/gigalixir.sh git:remote card-game-alpha
```

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
