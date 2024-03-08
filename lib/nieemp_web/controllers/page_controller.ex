defmodule NieempWeb.PageController do
  use NieempWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: {NieempWeb.Layouts, :campus})
  end
end
