defmodule CardGameAlphaWeb.GameController do
  use CardGameAlphaWeb, :controller

  import Phoenix.LiveView.Controller

  def create(conn, _params) do
    game_name = CardGameAlpha.SimpleId.new()
    redirect(conn, to: Routes.game_path(conn, :show, game_name))
  end

  def show(conn, %{"id" => game_name}) do
    live_render(conn, CardGameAlphaWeb.GameLive,
      session: %{
        "game_name" => game_name,
        "current_user" => get_session(conn, :current_user)
      }
    )
  end
end
