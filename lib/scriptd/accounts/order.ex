defmodule Scriptd.Accounts.Order do
  use Ecto.Schema
  import Ecto.Changeset

  alias Scriptd.Accounts.Location
  alias Scriptd.Accounts.Patient

  schema "orders" do
    field :prescription_id, :integer
    belongs_to :patient, Patient
    belongs_to :location, Location
    timestamps()
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:prescription_id])
    |> validate_required([:prescription_id])
  end
end
