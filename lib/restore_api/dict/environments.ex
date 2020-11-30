defmodule RestoreApi.Dict.Environments do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:env_id, :integer, []}
  schema "environments" do
    field :env_name, :string
    field :env_type_id, :integer
    field :project_id, :integer

  end

end
