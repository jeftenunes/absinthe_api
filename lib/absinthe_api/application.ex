defmodule AbsintheApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      AbsintheApiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: AbsintheApi.PubSub},
      # Start Finch
      {Finch, name: AbsintheApi.Finch},
      # Start the Endpoint (http/https)
      AbsintheApiWeb.Endpoint
      # Start a worker by calling: AbsintheApi.Worker.start_link(arg)
      # {AbsintheApi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AbsintheApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    AbsintheApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
