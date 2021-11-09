# phoenix-bandit demo

Demo Phoenix app using bandit in place of cowboy. Just run `mix phx.server`
and then `curl localhost:4000/hello`.

## Details

To plug in Bandit with current Phoenix, add a module exposing `child_specs/2`, something like this:

```elixir
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
```
and then passing the module as `:adapter` in the Phoenix Endpoint config.exs

```elixir
config :my_app, MyApp.Endpoint,
  adapter: PhoenixBanditAdapter,
  http: [ip: {127, 0, 0, 1}, port: 4000]
```

