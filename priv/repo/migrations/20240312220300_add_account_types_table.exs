defmodule Nieemp.Repo.Migrations.AddAccountTypesTable do
  use Ecto.Migration

  def up do
    create table(:account_types) do
      add :key, :string

      timestamps()
    end

    create unique_index(:account_types, [:key])
  end

  def down do
    drop table(:account_types)
  end
end
