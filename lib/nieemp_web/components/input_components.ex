defmodule NieempWeb.InputComponents do
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
        "text-ni-black px-4 py-2 text-ni-white rounded-xl focus:border-ni-blue border-ni-black"
      ]}
      type={@type}
      name={@name}
      value={@value}
      phx-hook={@phx_hook}
    />
    """
  end
end
