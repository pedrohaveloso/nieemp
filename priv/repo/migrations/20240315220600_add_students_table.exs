defmacro Nieemp.Repo.Migrations.AddStudentsTable do
  use Ecto.Migration

  def up() do
    create table(:students) do
      add :uuid, :uuid, primary_key: true, null: false

      add :document, :string

      timestamps()
    end
  end

  def down() do
    drop table(:students)
  end
end
