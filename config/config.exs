# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :back_button,
  ecto_repos: [BackButton.Repo]

# Configures the endpoint
config :back_button, BackButtonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nqXhcRyihReEd24IapCasa34LqDSOy6tTvAwPYzBb8h3cLjKbJMlNeLiNt+Tn21d",
  render_errors: [view: BackButtonWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BackButton.PubSub,
  live_view: [signing_salt: "N0Na2Mu4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
