defmodule RestoreApiWeb.ProjectsView do
  use RestoreApiWeb, :view
  alias RestoreApiWeb.ProjectsView

  def render("index.json", %{projects: projects}) do
    %{data: render_many(projects, ProjectsView, "projects.json")}
  end

  def render("show.json", %{projects: projects}) do
    %{data: render_one(projects, ProjectsView, "projects.json")}
  end

  def render("projects.json", %{projects: projects}) do
    %{id: projects.project_id,
      project_name: projects.project_name,
      description: projects.description}
  end
end
