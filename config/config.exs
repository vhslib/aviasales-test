# General application configuration
use Mix.Config

# Configures the endpoint
config :aviasales_test, AviasalesTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "c3VinM4fmvE0CweytqaNM6WtfpjFaV/OQ8f2/Ir85VI8pNRj6HM2sbGkk0E2wpTS",
  render_errors: [view: AviasalesTestWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: AviasalesTest.PubSub,
  live_view: [signing_salt: "HrwooGn8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
