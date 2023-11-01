# EctoAssocRepro

```elixir
import Ecto.Query
EctoAssocRepro.Repo.all(from u in EctoAssocRepro.UserSchema, preload: [:organizations])
```

Error:

```bash
** (Ecto.QueryError) deps/ecto/lib/ecto/query/planner.ex:963: field `user_schema_id` in `select` does not exist in schema EctoAssocRepro.UserOrganizationSchema in query:

from o0 in EctoAssocRepro.OrganizationSchema,
  join: u1 in EctoAssocRepro.UserOrganizationSchema,
  on: o0.id == u1.organization_schema_id,
  where: u1.user_schema_id in ^[3, 2, 1],
  order_by: [asc: type(u1.user_schema_id, :id)],
  select: {type(u1.user_schema_id, :id), o0}

    (elixir 1.14.4) lib/enum.ex:1780: Enum."-map_reduce/3-lists^mapfoldl/2-0-"/3
    (elixir 1.14.4) lib/enum.ex:2468: Enum."-reduce/3-lists^foldl/2-0-"/3
```