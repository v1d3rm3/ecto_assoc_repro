defmodule EctoAssocRepro.Repo.Migrations.InitialStructure do
  use Ecto.Migration

  def change do
    create table("teams") do
      add :name, :string
    end

    create table("users") do
      add :name, :string
      add :team_id, references(:teams, on_delete: :delete_all)
    end

    create table("organizations") do
      add :name, :string
    end

    create table("users_organizations") do
      add :user_id, references(:users, on_delete: :delete_all), primery_key: true
      add :organization_id, references(:organizations, on_delete: :delete_all), primery_key: true
    end
  end
end
