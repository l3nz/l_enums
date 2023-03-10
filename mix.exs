defmodule LEnums.MixProject do
  use Mix.Project

  @source_url "https://github.com/l3nz/l_enums"
  @version "0.1.0-dev"

  def project do
    [
      app: :l_enums,
      version: @version,
      description:
        "LEnums are modern, tabular enum values for Elixir. Inspired by Java enums, with an Elixir flavour.",
      package: package(),
      elixir: "~> 1.11",
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package do
    [
      maintainers: ["lenz"],
      licenses: ["Apache-2"],
      links: %{"GitHub" => @source_url},
      files: ~w(.formatter.exs mix.exs README.md CHANGELOG.md lib)
    ]
  end
end
