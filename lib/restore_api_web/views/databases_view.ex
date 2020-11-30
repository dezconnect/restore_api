defmodule RestoreApiWeb.DatabasesView do
  use RestoreApiWeb, :view
  alias RestoreApiWeb.DatabasesView

  def render("index.json", %{databases: databases}) do
    %{data: render_many(databases, DatabasesView, "databases.json")}
  end

  def render("show.json", %{databases: databases}) do
    %{data: render_one(databases, DatabasesView, "databases.json")}
  end

  def render("databases.json", %{databases: databases}) do
    %{id: databases.db_id,
      db_oid: databases.db_oid,
      db_name: databases.db_name,
      instance_id: databases.instance_id,
      owner: databases.owner}
  end
end
