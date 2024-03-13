defmodule Nieemp.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def up do
    create table("users") do
      add :user_id, :id
      add :user_uuid, Ecto.UUID
    end
  end
end
