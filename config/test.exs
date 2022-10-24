import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :card_game_alpha, CardGameAlpha.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "card_game_alpha_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :card_game_alpha, CardGameAlphaWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "eSe5WR0boNheu3CaQhiHJsADCQUE8Jv4GGW8+jotHSiWddWR7/o9OHEB9iZ8YsZ8",
  server: false

# In test we don't send emails.
config :card_game_alpha, CardGameAlpha.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
