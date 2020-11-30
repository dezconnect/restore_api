defmodule RestoreApi.Dict.Databases do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:db_id, :integer, []}
  schema "databases" do
    field :db_name, :string
    field :db_oid, :integer
    field :instance_id, :integer
    field :owner, :string
  end

  @doc false
  def changeset(databases, attrs) do
    databases
    |> cast(attrs, [:db_id, :db_oid, :db_name, :instance_id, :owner])
    |> validate_required([:db_id, :db_oid, :db_name, :instance_id, :owner])
  end
end
