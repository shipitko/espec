defmodule ESpec.Mixfile do
  use Mix.Project

  @version "1.4.5"

  def project do
    [app: :espec,
     name: "ESpec",
     version: @version,
     elixir: ">= 1.3.4",
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/antonmi/espec",
     preferred_cli_env: [espec: :test]
   ]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [
      {:meck, "0.8.7"},
      {:credo, "0.8.5", only: [:dev, :test]},
      # Docs
      {:ex_doc, "0.16.2", only: [:docs, :dev]}
    ]
  end

  defp description do
    "BDD testing framework for Elixir inspired by RSpec."
  end

  defp package do
   [
     files: ~w(lib mix.exs README.md),
     maintainers: ["Anton Mishchuk"],
     licenses: ["MIT"],
     links: %{"github" => "https://github.com/antonmi/espec"}
   ]
 end
end
