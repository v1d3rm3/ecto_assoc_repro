defmodule EctoAssocRepro.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      EctoAssocRepro.Repo
      # Starts a worker by calling: EctoAssocRepro.Worker.start_link(arg)
      # {EctoAssocRepro.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: EctoAssocRepro.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
