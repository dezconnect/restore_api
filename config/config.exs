# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :restore_api,
  ecto_repos: [RestoreApi.Repo]

# Configures the endpoint
config :restore_api, RestoreApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BvcNWQ0TfQ50KMuN4pvPSiubzE9tfb5Gj4sQ7KFYLi8j4HDbyo+sx2vcVxwaQND+",
  render_errors: [view: RestoreApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: RestoreApi.PubSub,
  live_view: [signing_salt: "mtfdIaom"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
