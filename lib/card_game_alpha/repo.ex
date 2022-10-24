defmodule CardGameAlpha.Repo do
  use Ecto.Repo,
    otp_app: :card_game_alpha,
    adapter: Ecto.Adapters.Postgres
end
