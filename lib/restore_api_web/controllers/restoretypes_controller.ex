defmodule RestoreApiWeb.RestoreTypesContoller do 
  use RestoreApiWeb, :controller

  alias RestoreApi.RestoreTypes

  action_fallback RestoreApiWeb.FallbackController

  def index(conn, _params) do 
    json(conn, RestoreTypes.get())
  end
end
