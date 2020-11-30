defmodule RestoreApiWeb.EnvironmentsController do
  use RestoreApiWeb, :controller

  alias RestoreApi.Dict
  alias RestoreApi.Dict.Environments

  action_fallback RestoreApiWeb.FallbackController

  def index(conn, _params) do
    environments = Dict.list_environments()
    render(conn, "index.json", environments: environments)
  end


  def show(conn, %{"id" => id}) do
    environments = Dict.get_environments!(id)
    render(conn, "show.json", environments: environments)
  end

end
