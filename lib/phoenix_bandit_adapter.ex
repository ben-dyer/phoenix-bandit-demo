defmodule PhoenixBanditAdapter do
  def child_specs(endpoint, configs) do
    bandit_options =
      [
        plug: endpoint,
        scheme: :http,
        read_timeout: Keyword.get(configs, :read_timeout),
        options: Keyword.get(configs, :thousand_island_options)
      ] |> Enum.filter(fn {_k,v} -> !is_nil(v) end)

    [Bandit.child_spec(bandit_options)]
  end
end
