# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :majesiu_site,
  ecto_repos: [MajesiuSite.Repo]

# Configures the endpoint
config :majesiu_site, MajesiuSite.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZP/r/6T1Bgm8DhbMITxFHPtbi5nlYdTGZzJQFtjG7OzDLlN9z/8VGZ0A+W1JhJK2",
  render_errors: [view: MajesiuSite.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MajesiuSite.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
