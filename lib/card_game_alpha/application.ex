defmodule CardGameAlpha.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      CardGameAlpha.Repo,
      # Start the Telemetry supervisor
      CardGameAlphaWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: CardGameAlpha.PubSub},
      # Start the Endpoint (http/https)
      CardGameAlphaWeb.Endpoint,
      # Start the Presence system
      CardGameAlphaWeb.Presence
      # Start a worker by calling: CardGameAlpha.Worker.start_link(arg)
      # {CardGameAlpha.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CardGameAlpha.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CardGameAlphaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
