defmodule Scriptd.Repo do
  use Ecto.Repo,
    otp_app: :scriptd,
    adapter: Ecto.Adapters.Postgres
end
