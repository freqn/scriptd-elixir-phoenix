defmodule ScriptdWeb.Router do
  use ScriptdWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ScriptdWeb do
    pipe_through :browser

    resources "/pharmacies", PharmacyController, only: [:create, :new]
    resources "/patients", PatientController
    resources "/prescriptions", PrescriptionController
    resources "/locations", LocationController
    resources "/orders", OrderController

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ScriptdWeb do
  #   pipe_through :api
  # end
end
