defmodule Nieemp.Repo.Migrations.AddCompaniesTable do
  use Ecto.Migration

  def up() do
    create table(:companies, primary_key: false) do
      add :uuid, :uuid, primary_key: true, null: false

      add :contact_name, :string
      add :contact_phone, :string

      add :is_approved, :boolean

      add :account_uuid, references(:accounts, column: :uuid, type: :uuid)

      timestamps()
    end

    create unique_index(:companies, [:account_uuid])
  end

  def down() do
    drop table(:companies)
  end
end
