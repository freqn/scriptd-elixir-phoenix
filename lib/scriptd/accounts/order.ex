defmodule Scriptd.Accounts.Order do
  use Ecto.Schema
  import Ecto.Changeset


  schema "orders" do
    field :prescription_id, :integer
    field :location_id, :id
    field :patient_id, :id

    timestamps()
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:prescription_id])
    |> validate_required([:prescription_id])
  end
end
