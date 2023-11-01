defmodule EctoAssocRepro.Repo.Migrations.InitialStructure do
  use Ecto.Migration

  def change do
    create table("users") do
      add :name, :string
    end

    create table("organizations") do
      add :name, :string
    end

    create table("users_organizations") do
      add :users_id, references(:users, on_delete: :delete_all), primery_key: true
      add :organizations_id, references(:organizations, on_delete: :delete_all), primery_key: true
    end
  end
end
