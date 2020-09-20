defmodule FsUtils.MixProject do
  use Mix.Project

  def project do
    [
      app: :fs_utils,
      version: "0.1.0",
      elixir: "> 1.9.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      # Docs
      name: "FsUtils",
      package: package(),
      source_url: "https://github.com/iboard/fs_utils",
      homepage_url: "https://github.com/iboard/fs_utils",
      docs: [
        main: "readme",
        logo: "assets/logo.png",
        extras: ["README.md", "LICENSE.md"]
      ]
    ]
  end

  def package() do
    [
      description: "Some little Elixir-helpers for the file system",
      licenses: ["MIT"],
      links: %{github: "https://github.com/iboard/fs_utils"}
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
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
    ]
  end
end
