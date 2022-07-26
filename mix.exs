defmodule StillScss.MixProject do
  use Mix.Project

  def project do
    [
      app: :still_scss,
      description: "A Still preprocessor for .scss files",
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/pepicrft/still_css",
      package: package()
    ]
  end

  def package do
    [
      name: "still_scss",
      organization: "Craftweg",
      licenses: ["MIT"]
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
      {:neotoma, "~> 1.7", manager: :rebar3, override: true},
      {:still, "~> 0.8.0"},
      {:sass_compiler, "~> 0.1"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
