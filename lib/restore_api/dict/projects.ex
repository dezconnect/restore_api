defmodule RestoreApi.Dict.Projects do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:project_id, :integer, []}
  schema "projects" do
    field :description, :string
    field :project_name, :string
  end

end
