defmodule RestoreApiWeb.InstancesView do
  use RestoreApiWeb, :view
  alias RestoreApiWeb.InstancesView

  def render("index.json", %{instances: instances}) do
    %{data: render_many(instances, InstancesView, "instances.json")}
  end

  def render("show.json", %{instances: instances}) do
    %{data: render_one(instances, InstancesView, "instances.json")}
  end

  def render("instances.json", %{instances: instances}) do
    %{id: instances.instance_id,
      ip: to_string(instances.ip),
      port: instances.port,
      hostname: instances.hostname,
      env_id: instances.env_id,
      instance_type_id: instances.instance_type_id}
  end
end
