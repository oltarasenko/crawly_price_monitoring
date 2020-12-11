defmodule PriceMonitoring.MixProject do
  use Mix.Project

  def project do
    [
      app: :price_monitoring,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
	{:crawly, "~> 0.12.0"},
	{:floki, "~> 0.26.0"}
    ]
  end
end
