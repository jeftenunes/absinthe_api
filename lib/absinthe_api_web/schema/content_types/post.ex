defmodule AbsintheApiWeb.Schema.ContentTypes.Post do
  use Absinthe.Schema.Notation

  object :post do
    field(:id, :id)
    field(:body, :string)
    field(:title, :string)
  end
end
