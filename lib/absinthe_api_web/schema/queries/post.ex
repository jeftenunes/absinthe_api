defmodule AbsintheApiWeb.Schema.Queries.Post do
  use Absinthe.Schema.Notation
  alias AbsintheApiWeb.Resolvers.PostResolver, as: PostResolver

  object :post_queries do
    field :posts, list_of(:post) do
      resolve(&PostResolver.find_all/2)
    end

    field :post, :post do
      arg(:id, non_null(:id))

      resolve(&PostResolver.find_by_id/2)
    end
  end
end
