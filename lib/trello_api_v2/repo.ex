defmodule TrelloApiV2.Repo do
  use Ecto.Repo,
    otp_app: :trello_api_v2,
    adapter: Ecto.Adapters.SQLite3
end
