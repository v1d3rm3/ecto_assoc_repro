import Config

config :ecto_assoc_repro, EctoAssocRepro.Repo,
  database: "ecto_assoc_repro_repo",
  username: "postgres",
  password: "",
  hostname: "localhost"

  config :ecto_assoc_repro,
      ecto_repos: [EctoAssocRepro.Repo]
