import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :trello_api_v2, TrelloApiV2.Repo,
  database: Path.expand("../trello_api_v2_test.db", __DIR__),
  pool_size: 5,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :trello_api_v2, TrelloApiV2Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "a22ZcSN89KuCCuj1RcNGiBQEtLWEMwZya/+BH30SI32ZGuam8h95QwRWZGaDv3BD",
  server: false

# In test we don't send emails
config :trello_api_v2, TrelloApiV2.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
