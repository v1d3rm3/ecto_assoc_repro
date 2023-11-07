defmodule EctoAssocRepro.UserSchema do
  alias EctoAssocRepro.OrganizationSchema
  alias EctoAssocRepro.UserOrganizationSchema
  use Ecto.Schema

  schema "users" do
    # many_to_many(:organizations, OrganizationSchema, join_through: UserOrganizationSchema, join_keys: [user_id: :id, organization_id: :id]) # IT WORKS
    many_to_many(:organizations, OrganizationSchema, join_through: UserOrganizationSchema)
    belongs_to :team, EctoAssocRepro.TeamSchema
  end
end
