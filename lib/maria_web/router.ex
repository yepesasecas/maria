defmodule MariaWeb.Router do
  use MariaWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MariaWeb do
    pipe_through :browser

    get "/", DashboardController, :index
    get "/dashboard", DashboardController, :index
    get "/menu/category", MenuCategoryController, :index
    get "/menu/item", MenuItemController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", MariaWeb do
  #   pipe_through :api
  # end
end
