defmodule EctoAssocRepro.OrganizationSchema do
  alias EctoAssocRepro.UserSchema
  alias EctoAssocRepro.UserOrganizationSchema
  use Ecto.Schema

  schema "organizations" do
    many_to_many(:users, UserSchema, join_through: UserOrganizationSchema)
  end
end
