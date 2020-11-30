defmodule RestoreApiWeb.InstancesController do
  use RestoreApiWeb, :controller

  alias RestoreApi.Dict
  alias RestoreApi.Dict.Instances

  action_fallback RestoreApiWeb.FallbackController

  def index(conn, _params) do
    instances = Dict.list_instances()
    render(conn, "index.json", instances: instances)
  end

  def show(conn, %{"id" => id}) do
    instances = Dict.get_instances!(id)
    render(conn, "show.json", instances: instances)
  end
end
