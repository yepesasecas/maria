defmodule MariaWeb.MenuItemController do
  use MariaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
