defmodule FawkesWeb.Router do
  use Phoenix.Router
  import Plug.Conn
  import Phoenix.Controller

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FawkesWeb do
    pipe_through :api

    get "/hello", HelloController, :index
  end
end
