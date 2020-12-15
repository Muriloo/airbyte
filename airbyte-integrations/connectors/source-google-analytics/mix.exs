defmodule AirbyteSourceGoogleAnalytics.MixProject do
  use Mix.Project

  def project do
    [
      app: :airbyte_source_google_analytics,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: [main_module: Airbyte.Source.GoogleAnalytics.Cli]
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
      {:jason, "~> 1.2.2"},
      {:google_api_analytics, "~> 0.13"},
      {:google_api_analytics_admin, "~> 0.2"},
      {:google_api_analytics_data, "~> 0.7"},
      {:google_api_analytics_reporting, "~> 0.15"},
      {:goth, "~> 1.2.0"},
      {:airbyte, path: "../../bases/base-elixir"},
      # keep this until hackney 1.17
      {:hackney, git: "https://github.com/benoitc/hackney.git", override: true}
    ]
  end
end