defmodule Scriptd.Accounts.Prescription do
  use Ecto.Schema
  import Ecto.Changeset

  alias Scriptd.Accounts.Order

  schema "prescriptions" do
    field :name, :string
    belongs_to :order, Order
    timestamps()
  end

  @doc false
  def changeset(prescription, attrs) do
    prescription
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
