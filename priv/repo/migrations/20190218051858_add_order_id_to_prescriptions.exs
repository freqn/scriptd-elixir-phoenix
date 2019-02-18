defmodule Scriptd.Repo.Migrations.AddOrderIdToPrescriptions do
  use Ecto.Migration

  def change do
    alter table(:prescriptions) do
      add :order_id, references(:orders)
    end
    create index(:prescriptions, [:order_id])
  end
end
