defmodule NieempWeb.PageController do
  use NieempWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: {NieempWeb.Layouts, :campus})
  end

  def login(conn, _params) do
    render(
      conn,
      :login,
      layout: {NieempWeb.Layouts, :campus},
      page_title: ~c"Entrar"
    )
  end
end
