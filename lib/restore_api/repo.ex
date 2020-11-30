defmodule RestoreApi.Repo do
  use Ecto.Repo,
    otp_app: :restore_api,
    adapter: Ecto.Adapters.Postgres
end
