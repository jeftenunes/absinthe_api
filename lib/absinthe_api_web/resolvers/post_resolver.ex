defmodule AbsintheApiWeb.Resolvers.PostResolver do
  def find_all(_params, _) do
    {:ok, %{id: 1, body: "a body", title: "a title"}}
  end

  def find_by_id(%{id: id}, _) do
    {:ok, %{id: id, body: "a body", title: "a title"}}
  end

  def update(%{id: id} = params, _) do
    {:ok, %{id: id, body: params.body, title: params.title}}
  end
end
