defmodule AbsintheApiWeb.Repo.Database do
  @filepath Path.expand("../data", __DIR__)

  def write(data) do
    @filepath
    |> Path.join("file.txt")
    |> File.write!(data)
  end

  def read() do
    @filepath
    |> Path.join("file.txt")
    |> File.read!()
  end
end
