defmodule RestoreApiWeb.DatabasesController do
  use RestoreApiWeb, :controller

  alias RestoreApi.Dict
  alias RestoreApi.Dict.Databases

  action_fallback RestoreApiWeb.FallbackController

  def index(conn, _params) do
    databases = Dict.list_databases()
    render(conn, "index.json", databases: databases)
  end

  def create(conn, %{"databases" => databases_params}) do
    with {:ok, %Databases{} = databases} <- Dict.create_databases(databases_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.databases_path(conn, :show, databases))
      |> render("show.json", databases: databases)
    end
  end

  def show(conn, %{"id" => id}) do
    databases = Dict.get_databases!(id)
    render(conn, "show.json", databases: databases)
  end

  def delete(conn, %{"id" => id}) do
    databases = Dict.get_databases!(id)

    with {:ok, %Databases{}} <- Dict.delete_databases(databases) do
      send_resp(conn, :no_content, "")
    end
  end
end
