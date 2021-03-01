defmodule BackButton.Repo do
  use Ecto.Repo,
    otp_app: :back_button,
    adapter: Ecto.Adapters.Postgres
end
