defmodule Nieemp.Repo.Migrations.AddAccountsTable do
  use Ecto.Migration

  def up() do
    create table(:accounts, primary_key: false) do
      add :uuid, :uuid, primary_key: true, null: false

      add :name, :string
      add :document, :string
      add :email, :string
      add :password, :string

      add :account_type_uuid, references(:account_types, column: :uuid, type: :uuid)

      timestamps()
    end

    create unique_index(:accounts, [:email])
  end

  def down() do
    drop table(:accounts)
  end
end
