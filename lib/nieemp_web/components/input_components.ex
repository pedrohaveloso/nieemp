defmodule NieempWeb.Components.InputComponents do
  @moduledoc """
  Provides inputs UI components.
  """

  use Phoenix.Component

  @doc """
  Renders a default input application.

  ## Examples

      <.input type="number" name="age" value="18" />
  """
  attr :type, :string, default: "text"
  attr :name, :string, default: nil
  attr :value, :string, default: nil
  attr :class, :string, default: nil
  attr :id, :string, default: nil
  attr :phx_hook, :string, default: nil
  attr :required, :boolean, default: false

  def input(assigns) do
    ~H"""
    <input
      required={@required}
      id={@id}
      class={[
        @class,
        "text-ni-black px-4 py-2 rounded-xl focus:border-ni-blue border-ni-black"
      ]}
      type={@type}
      name={@name}
      value={@value}
      phx-hook={@phx_hook}
    />
    """
  end

  @doc """
  Renders a default label-input application.

  ## Examples

      <.label_input type="number" name="age" value="18">
        Olá.
      </label_input>
  """
  attr :type, :string, default: "text"
  attr :name, :string, default: nil
  attr :value, :string, default: nil
  attr :class, :string, default: nil
  attr :id, :string, default: nil
  attr :phx_hook, :string, default: nil
  attr :required, :boolean, default: false
  slot :inner_block, required: true

  def label_input(assigns) do
    ~H"""
    <label class="w-full mt-2 font-bold text-ni-black flex flex-col items-start" for={@id}>
      <span class="flex justify-center gap-1">
        <%= render_slot(@inner_block) %>
      </span>

      <.input
        required={@required}
        id={@id}
        class="font-medium w-full text-ni-black px-4 py-2 rounded-xl focus:border-ni-blue border-ni-black"
        type={@type}
        name={@name}
        value={@value}
        phx_hook={@phx_hook}
      />
    </label>
    """
  end
end
