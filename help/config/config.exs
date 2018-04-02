# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :help,
  ecto_repos: [Help.Repo]

# Configures the endpoint
config :help, HelpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AiNd9GHCkvSiefiHbRopNV/TuWu2/pX++W25lvKq2HrhCwJ8RMG4MeBLHoRRRwV5",
  render_errors: [view: HelpWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Help.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
