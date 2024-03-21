defmodule Nieemp.Accounts.Account do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:uuid, Ecto.UUID, autogenerate: true}

  schema "accounts" do
    field :name, :string
    field :document, :string
    field :email, :string
    field :password, :string

    field :account_type_uuid, :integer

    timestamps()
  end

  @doc false
  def changeset(account, attrs) do
    account
    |> cast(attrs, [:name, :document, :email, :password, :account_type_uuid])
    |> validate_required([:name, :document, :email, :password])
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
  end
end
