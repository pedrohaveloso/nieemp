defmodule Nieemp.Accounts.AccountType do
  use Ecto.Schema
  import Ecto.Changeset

  schema "account_types" do
    field :key, :string
  end

  @doc false
  def changeset(account_type, attrs) do
    account_type
    |> cast(attrs, [:key])
    |> validate_required([:key])
  end
end
