defmodule EctoAssocRepro.TeamSchema do
  use Ecto.Schema

  schema "teams" do
    field :name, :string
  end
end
