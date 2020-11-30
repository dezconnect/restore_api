defmodule RestoreApiWeb.EnvironmentsView do
  use RestoreApiWeb, :view
  alias RestoreApiWeb.EnvironmentsView

  def render("index.json", %{environments: environments}) do
    %{data: render_many(environments, EnvironmentsView, "environments.json")}
  end

  def render("show.json", %{environments: environments}) do
    %{data: render_one(environments, EnvironmentsView, "environments.json")}
  end

  def render("environments.json", %{environments: environments}) do
    %{id: environments.env_id,
      env_name: environments.env_name,
      env_type_id: environments.env_type_id,
      project_id: environments.project_id}
  end
end
