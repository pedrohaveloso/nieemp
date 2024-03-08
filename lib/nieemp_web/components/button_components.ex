defmodule NieempWeb.ButtonComponents do
  @moduledoc """
  Provides buttons UI components.
  """

  use Phoenix.Component

  @doc """
  Renders a default primary button application.

  ## Examples

      <.primary_button class="bg-blue-900" onclick="jsFunction()">
        Click me
      </.primary_button>
  """
  attr :class, :string, default: nil
  attr :onclick, :string, default: nil
  slot :inner_block, required: true

  def primary_button(assigns) do
    ~H"""
    <button
      class={[
        @class,
        "text-sm sm:text-base flex items-center justify-center gap-3 px-4 sm:px-8 py-4 text-white font-medium rounded-xl hover:opacity-90 transition-all duration-500"
      ]}
      type="button"
      onclick={@onclick}
    >
      <%= render_slot(@inner_block) %>
    </button>
    """
  end
end
