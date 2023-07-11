defmodule EctoStudies.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: EctoStudies.Worker.start_link(arg)
      # {EctoStudies.Worker, arg}
      EctoStudies.Repo
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: EctoStudies.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
