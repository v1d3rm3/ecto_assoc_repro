defmodule EctoAssocRepro.UserOrganizationSchema do
  alias EctoAssocRepro.OrganizationSchema
  alias EctoAssocRepro.UserSchema
  use Ecto.Schema

  @primary_key false
  schema "users_organizations" do
    belongs_to(:user, UserSchema)
    belongs_to(:organization, OrganizationSchema)
    timestamps()
  end
end
