defmodule AbsintheApiWeb.Repo.BlogRepo do
  alias AbsintheApiWeb.Repo.Database, as: Database

  def insert_post(%{"id" => _id, "body" => _body, "title" => _title} = data) do
    Database.write(Jason.encode!(data))
  end

  def retrieve_posts() do
    Database.read()
    |> Jason.decode!()
  end

  def find_posts_by(id) do
    posts =
      Database.read()
      |> Jason.decode!()

    Map.get(posts, :id, id)
  end
end
