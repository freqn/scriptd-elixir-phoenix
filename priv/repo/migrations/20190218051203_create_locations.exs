defmodule Scriptd.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :latitude, :string
      add :longitude, :string
      add :pharmacy_id, references(:pharmacies)

      timestamps()
    end

    create index(:locations, [:pharmacy_id])
  end
end
