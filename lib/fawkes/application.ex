defmodule Fawkes.Application do
  use Application

  @impl Application
  def start(_type, _args) do
    children = [FawkesWeb.Endpoint]
    opts = [strategy: :one_for_one, name: Fawkes.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
