import Config

config :fawkes, FawkesWeb.Endpoint,
  adapter: PhoenixBanditAdapter,
  http: [ip: {127, 0, 0, 1}, port: 4000]

config :phoenix, :json_library, Jason
