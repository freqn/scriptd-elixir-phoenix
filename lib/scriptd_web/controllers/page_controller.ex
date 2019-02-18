defmodule ScriptdWeb.PageController do
  use ScriptdWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
