defmodule Nieemp.Repo.Migrations.AddAdminsTable do
  use Ecto.Migration

  def up() do
    create table(:admins, primary_key: false) do
      add :uuid, :uuid, primary_key: true, null: false

      add :username, :string

      add :account_uuid, references(:accounts, column: :uuid, type: :uuid)

      timestamps()
    end

    create unique_index(:admins, [:account_uuid])
    create unique_index(:admins, [:username])
  end

  def down() do
    drop table(:admins)
  end
end
