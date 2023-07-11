import Config

config :ecto_studies, EctoStudies.Repo,
  database: "ecto_studies_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :ecto_studies, ecto_repos: [EctoStudies.Repo]
