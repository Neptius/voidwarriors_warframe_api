defmodule VoidwarriorsWarframeApiWeb.Router do
  use VoidwarriorsWarframeApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", VoidwarriorsWarframeApiWeb do
    pipe_through :api
  end
end
