defmodule RestoreApiWeb.ProjectsController do
  use RestoreApiWeb, :controller

  alias RestoreApi.Dict
  alias RestoreApi.Dict.Projects

  action_fallback RestoreApiWeb.FallbackController

  def index(conn, _params) do
    projects = Dict.list_projects()
    render(conn, "index.json", projects: projects)
  end

  def show(conn, %{"id" => id}) do
    projects = Dict.get_projects!(id)
    render(conn, "show.json", projects: projects)
  end
end
