defmodule AbsintheApiWeb.Schema.Mutations.Post do
  use Absinthe.Schema.Notation
  alias AbsintheApiWeb.Resolvers.PostResolver

  object :post_mutations do
    field :update_post, :post do
      arg(:id, non_null(:id))
      arg(:body, :string)
      arg(:title, :string)

      resolve(&PostResolver.update/2)
    end
  end
end
