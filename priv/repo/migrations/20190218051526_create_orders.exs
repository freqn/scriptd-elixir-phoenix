defmodule Scriptd.Repo.Migrations.CreateOrders do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :prescription_id, :integer
      add :location_id, references(:locations, on_delete: :nothing)
      add :patient_id, references(:patients, on_delete: :nothing)

      timestamps()
    end

    create index(:orders, [:location_id])
    create index(:orders, [:patient_id])
  end
end
