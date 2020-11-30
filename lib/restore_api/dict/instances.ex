defmodule RestoreApi.Dict.Instances do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:instance_id, :integer, []}
  schema "instances" do
    field :env_id, :integer
    field :hostname, :string
    field :instance_type_id, :integer
    field :ip, EctoNetwork.INET
    field :port, :integer

  end

end
