defmodule FawkesWeb.HelloController do
  use Phoenix.Controller, namespace: FawkesWeb
  import Plug.Conn

  def index(conn, _params) do
    json(conn, %{"hello" => "world"})
  end
end
