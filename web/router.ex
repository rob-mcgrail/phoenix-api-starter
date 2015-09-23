defmodule RestApi.Router do
  use RestApi.Web, :router

  # pipeline :browser do
  #   plug :accepts, ["html"]
  #   plug :fetch_session
  #   plug :fetch_flash
  #   plug :protect_from_forgery
  # end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RestApi do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/rules", RuleController
    end
  end
end
