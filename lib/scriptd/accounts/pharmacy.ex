defmodule Scriptd.Accounts.Pharmacy do
  use Ecto.Schema
  import Ecto.Changeset

  alias Scriptd.Accounts.Location
  alias Comeonin.Bcrypt

  schema "pharmacies" do
    field :name, :string
    field :encrypted_password, :string
    field :username, :string
    has_many :locations, Location
    timestamps()
  end

  @doc false
  def changeset(pharmacy, attrs) do
    pharmacy
    |> cast(attrs, [:name, :username, :encrypted_password])
    |> unique_constraint(:username)
    |> validate_required([:name, :username, :encrypted_password])
    |> update_change(:encrypted_password, &Bcrypt.hashpwsalt/1)

  end
end
