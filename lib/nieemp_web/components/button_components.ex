defmodule NieempWeb.ButtonComponents do
  @moduledoc """
  Provides buttons UI components.
  """

  use Phoenix.Component

  @doc """
  Renders a default button application.
  Customize with TailwindCSS.

  ## Examples

      <.button class="bg-blue-900" onclick="jsFunction()">
        Click me
      </.button>
  """
  attr :class, :string, default: nil
  attr :onclick, :string, default: nil
  attr :type, :string, default: "button"
  slot :inner_block, required: true

  def button(assigns) do
    ~H"""
    <button
      class={[
        "text-sm sm:text-base flex items-center justify-center gap-3 px-6 sm:px-8 py-4 text-ni-white font-medium rounded-3xl hover:opacity-90 transition-all duration-500",
        @class
      ]}
      type={@type}
      onclick={@onclick}
    >
      <%= render_slot(@inner_block) %>
    </button>
    """
  end
end
