defmodule NieempWeb.PageController do
  use NieempWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end

  def login(conn, _params) do
    render(conn, :login, layout: false, page_title: ~c"Entrar")
  end
end
