defmodule RestoreApiWeb.DefaultController do 
  use RestoreApiWeb, :controller

  def index(conn, _params) do 
    text conn, "Databases restore API."
  end
end
