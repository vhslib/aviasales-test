defmodule AviasalesTestWeb.Router do
  use AviasalesTestWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AviasalesTestWeb do
    pipe_through :api

    get "/flights/:id", FlightsController, :index
  end
end
