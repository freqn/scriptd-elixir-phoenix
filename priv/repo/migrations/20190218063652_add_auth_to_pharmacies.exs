defmodule Scriptd.Repo.Migrations.AddAuthToPharmacies do
  use Ecto.Migration

  def change do
    alter table(:pharmacies) do
      add :username, :string
      add :encrypted_password, :string
    end
  end
end
