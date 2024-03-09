defmodule NieempWeb.HeroComponent do
  # In Phoenix apps, the line is typically: use MyAppWeb, :live_component
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div class="hero"><%= @content %></div>
    """
  end
end
