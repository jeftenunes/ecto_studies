defmodule EctoStudies.Blog.Author do
  use Ecto.Schema
  import Ecto.Changeset

  schema "authors" do
    field :name, :string
    field :email, :string
  end

  @available_fields [:name, :email]

  def changeset(authors, attrs) do
    authors
    |> cast(attrs, @available_fields)
    |> validate_required(@available_fields)
  end
end
