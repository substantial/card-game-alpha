defmodule CardGameAlphaWeb.Presence do
  @moduledoc """
  Provides presence tracking to channels and processes.
  See the [`Phoenix.Presence`](http://hexdocs.pm/phoenix/Phoenix.Presence.html)
  docs for more details.
  """
  use Phoenix.Presence,
    otp_app: :card_game_alpha,
    pubsub_server: CardGameAlpha.PubSub
end
