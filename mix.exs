defmodule CRUDimentary.MixProject do
  use Mix.Project

  def project do
    [
      app: :crudimentary_ecto,
      version: "0.2.5",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "CRUDimentary - Ecto",
      source_url: "https://github.com/CRUDimentary/crudimentary-ecto",
      docs: [
        main: "CRUDimentary - Ecto",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ecto_sql, "~> 4.0"},
      {:ex_doc, "~> 0.16"},
      {:odgn_json_pointer, "~> 2.3"},
      {:confex, "~> 3.3.1"}
    ]
  end
end
