defmodule VoidwarriorsWarframeApiWeb.Router do
  use VoidwarriorsWarframeApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "graphql", Absinthe.Plug, schema: VoidwarriorsWarframeApiWeb.Schema

    if Mix.env() == :dev do
      forward "graphiql", Absinthe.Plug.Graphiql, schema: VoidwarriorsWarframeApiWeb.Schema
    end

  end
end
