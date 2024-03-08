defmodule Nieemp.Repo do
  use Ecto.Repo,
    otp_app: :nieemp,
    adapter: Ecto.Adapters.Postgres
end
