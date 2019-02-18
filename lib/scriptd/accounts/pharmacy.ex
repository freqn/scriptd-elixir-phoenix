defmodule Scriptd.Accounts.Pharmacy do
  use Ecto.Schema
  import Ecto.Changeset

  alias Scriptd.Accounts.Location

  schema "pharmacies" do
    field :name, :string
    has_many :locations, Location
    timestamps()
  end

  @doc false
  def changeset(pharmacy, attrs) do
    pharmacy
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
