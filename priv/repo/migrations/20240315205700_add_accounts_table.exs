defmodule Nieemp.Repo.Migrations.AddAccountsTable do
  use Ecto.Migration

  def up() do
    create table(:accounts) do
      add :uuid, :uuid, primary_key: true, null: false

      add :name, :string
      add :email, :string
      add :password, :string

      add :account_type, references(:account_types)

      timestamps()
    end

    create unique_index(:accounts, [:email])
    create unique_index(:accounts, [:account_type])
  end

  def down() do
    drop table(:accounts)
  end
end
