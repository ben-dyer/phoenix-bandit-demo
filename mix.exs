defmodule Fawkes.MixProject do
  use Mix.Project

  def project do
    [
      app: :fawkes,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Fawkes.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bandit, "~> 0.4.4"},
      {:jason, "~> 1.2.2"},
      {:phoenix, "~> 1.6.2"}
    ]
  end
end
