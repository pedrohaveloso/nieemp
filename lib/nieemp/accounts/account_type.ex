defmodule Nieemp.Accounts.AccountType do
  use Ecto.Schema
  import Ecto.Changeset

  schema "account_types" do
    field :account_type_id, :integer
    field :account_type_key, :string
  end

  @doc false
  def changeset(account_type, attrs) do
    account_type
    |> cast(attrs, [:account_type_key])
    |> validate_required([:account_type_key])
  end
end
