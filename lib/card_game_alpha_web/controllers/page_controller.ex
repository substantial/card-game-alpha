defmodule CardGameAlphaWeb.PageController do
  use CardGameAlphaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
