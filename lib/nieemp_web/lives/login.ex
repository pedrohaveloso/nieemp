defmodule NieempWeb.Lives.Login do
  use NieempWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :current_form, nil)}
  end

  # Open and close forms:

  def handle_event("form_open_" <> user_type, _, socket) do
    {:noreply, assign(socket, :current_form, user_type)}
  end

  def handle_event("form_close", _, socket) do
    {:noreply, assign(socket, :current_form, nil)}
  end

  @doc """
  Provides a login form template to login page.

  ## Examples

      <.login_form_template user_type="student">
        Inputs...
      <./login_form_template>
  """
  attr :user_type, :string
  attr :submit, :string, default: ""
  slot :inner_block, required: true

  def login_form_template(assigns) do
    ~H"""
    <article class="flex flex-col sm:flex-row gap-2 justify-center" id={"#{@user_type}-form"}>
      <NieempWeb.Components.ButtonComponents.button
        class="bg-ni-black border-2 border-ni-black text-ni-white !p-2 !h-fit !w-fit"
        click="form_close"
      >
        <.icon class="text-ni-white" name="hero-x-mark" />
      </NieempWeb.Components.ButtonComponents.button>

      <form
        class="border-2 border-ni-black p-6 gap-3 rounded-3xl flex flex-col sm:min-w-[400px]"
        phx-submit={@submit}
      >
        <%= render_slot(@inner_block) %>
      </form>
    </article>
    """
  end
end
