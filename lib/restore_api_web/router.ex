defmodule RestoreApiWeb.Router do
  use RestoreApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RestoreApiWeb do
    pipe_through :api
    resources "/projects", ProjectsController, except: [:new, :edit, :delete]
    resources "/environments", EnvironmentsController, except: [:new, :edit, :delete]
    resources "/instances", InstancesController, except: [:new, :edit, :delete]
    resources "/databases", DatabasesController, except: [:edit]
    resources "/restore_types", RestoreTypesContoller, only: [:index ]
  end

  pipeline :browser do 
    plug(:accepts, ["html"])
  end

  scope "/", RestoreApiWeb do 
    pipe_through :browser
    get "/", DefaultController, :index
  end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: RestoreApiWeb.Telemetry
    end
  end
end
