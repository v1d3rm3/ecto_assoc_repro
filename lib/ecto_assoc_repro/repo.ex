defmodule EctoAssocRepro.Repo do
  use Ecto.Repo,
    otp_app: :ecto_assoc_repro,
    adapter: Ecto.Adapters.Postgres
end
