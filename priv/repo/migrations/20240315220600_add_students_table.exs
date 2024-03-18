defmodule Nieemp.Repo.Migrations.AddStudentsTable do
  use Ecto.Migration

  def up() do
    create table(:students, primary_key: false) do
      add :uuid, :uuid, primary_key: true, null: false

      add :rm, :string
      add :birth, :date
      add :is_egress, :boolean

      add :account_uuid, references(:accounts, column: :uuid, type: :uuid)

      timestamps()
    end

    create unique_index(:students, [:account_uuid])
    create unique_index(:students, [:rm])
  end

  def down() do
    drop table(:students)
  end
end
