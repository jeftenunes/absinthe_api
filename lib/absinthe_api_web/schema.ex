defmodule AbsintheApiWeb.Schema do
  use Absinthe.Schema

  import_types(AbsintheApiWeb.Schema.ContentTypes.Post)
  import_types(AbsintheApiWeb.Schema.Queries.Post)
  import_types(AbsintheApiWeb.Schema.Mutations.Post)

  @desc "Get posts"
  query do
    import_fields(:post_queries)
  end

  @desc "Mutate posts"
  mutation do
    import_fields(:post_mutations)
  end
end
