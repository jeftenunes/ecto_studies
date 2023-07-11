defmodule EctoStudies.Repo do
  use Ecto.Repo,
    otp_app: :ecto_studies,
    adapter: Ecto.Adapters.Postgres
end
