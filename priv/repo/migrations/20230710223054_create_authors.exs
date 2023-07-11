defmodule EctoStudies.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :name, :text
      add :email, :text
    end
  end
end
