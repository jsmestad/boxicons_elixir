defmodule Boxicons.MixProject do
  use Mix.Project

  def project do
    [
      app: :boxicons,
      version: "0.1.2",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Boxicons",
      source_url: "https://github.com/jsmestad/boxicons_elixir",
      description: "Phoenix components for Boxicons",
      docs: docs(),
      package: package()
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
      {:phoenix_live_view, "~> 0.18"},
      {:ex_doc, "~> 0.23", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jsmestad/boxicons_elixir"},
      files: ["lib/boxicons.ex", "README*", "mix.exs", ".formatter.exs", "CHANGELOG*", "LICENSE*"]
    ]
  end

  defp docs do
    []
  end
end
