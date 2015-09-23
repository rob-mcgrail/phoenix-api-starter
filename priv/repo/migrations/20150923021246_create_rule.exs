defmodule RestApi.Repo.Migrations.CreateRule do
  use Ecto.Migration

  def change do
    create table(:rules) do
      add :name, :string

      timestamps
    end

  end
end
