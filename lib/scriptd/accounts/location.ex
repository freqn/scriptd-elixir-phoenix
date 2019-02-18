defmodule Scriptd.Accounts.Location do
  use Ecto.Schema
  import Ecto.Changeset

  alias Scriptd.Accounts.Pharmacy
  alias Scriptd.Accounts.Order

  schema "locations" do
    field :latitude, :string
    field :longitude, :string
    belongs_to :pharmacy, Pharmacy
    has_many :orders, Order
    timestamps()
  end

  @doc false
  def changeset(location, attrs) do
    location
    |> cast(attrs, [:latitude, :longitude])
    |> validate_required([:latitude, :longitude])
  end
end
