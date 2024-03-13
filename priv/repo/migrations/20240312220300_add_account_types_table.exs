defmodule Nieemp.Repo.Migrations.AccountTypesTable do
  use Ecto.Migration

  def up do
    create table("account_types") do
      add :key, :string
    end
  end

  def drop do
    drop table("account_types")
  end
end
