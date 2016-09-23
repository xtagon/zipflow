defmodule Zipflow.Mixfile do
  use Mix.Project

  def project do
    [app: :zipflow,
     deps: deps,
     elixir: "~> 1.2",
     version: "0.0.1",
     package: [ maintainers: ["dgvncsz0f"],
                licenses: ["BSD-3"],
                links: %{"github" => "http://github.com/dgvncsz0f/zipflow"}
              ],
     description: description,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [{:dialyxir, "~> 0.3.5", only: :dev},
     {:ex_doc, "~> 0.13", only: :dev}]
  end

  defp description do
    """
    stream zip archives while building them
    """
  end
end
