defmodule EctoAssocRepro.UserSchema do
  alias EctoAssocRepro.OrganizationSchema
  alias EctoAssocRepro.UserOrganizationSchema
  use Ecto.Schema

  schema "users" do
    many_to_many(:organizations, OrganizationSchema, join_through: UserOrganizationSchema)
  end
end
