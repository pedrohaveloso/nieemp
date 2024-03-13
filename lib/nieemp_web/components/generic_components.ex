defmodule NieempWeb.GenericComponents do
  @moduledoc """
  Provides generic UI components.

  Icons are provided by [heroicons](https://heroicons.com). See `icon/1` for usage.
  """

  use Phoenix.Component

  @doc """
  Renders a [Heroicon](https://heroicons.com).

  Heroicons come in three styles – outline, solid, and mini.
  By default, the outline style is used, but solid and mini may
  be applied by using the `-solid` and `-mini` suffix.

  You can customize the size and colors of the icons by setting
  width, height, and background color classes.

  Icons are extracted from the `deps/heroicons` directory and bundled within
  your compiled app.css by the plugin in your `assets/tailwind.config.js`.

  ## Examples

      <.icon name="hero-x-mark-solid" />
      <.icon name="hero-arrow-path" class="ml-1 w-3 h-3 animate-spin" />
  """
  attr :name, :string, required: true
  attr :class, :string, default: nil

  def icon(%{name: "hero-" <> _} = assigns) do
    ~H"""
    <span class={[@name, @class]} />
    """
  end

  @doc """
  Renders a default footer component.

  It contains the current year and unimar contacts.

  ## Examples

      <.footer />
  """
  def footer(assigns) do
    assigns =
      assign(assigns, :current_year, DateTime.utc_now().year)
      |> assign(:unimar_contacts, %{
        mail: "falecom@unimar.br",
        phone: "+551421054000",
        formated_phone: "+55 (14) 2105-4000"
      })

    ~H"""
    <footer class="text-xs md:text-sm gap-2 lg:text-base flex flex-col sm:flex-row items-start sm:items-center justify-between p-5 w-full bg-ni-white bg-opacity-80">
      <a
        class="hover:opacity-90 transition-all duration-500 text-dark-blue"
        target="_blank"
        href="https://unimar.br/"
      >
        Universidade de Marília | <%= @current_year %>
      </a>

      <address class="flex flex-col sm:flex-row gap-1 sm:gap-4 md:gap-6 not-italic">
        <span class="hidden sm:flex">Fale conosco:</span>
        <a
          class="flex gap-2 items-center underline hover:opacity-90 transition-all duration-500"
          href={"mailto:" <> @unimar_contacts[:mail]}
        >
          <.icon name="hero-chat-bubble-left-solid" class="h-4 md:h-6" />
          <%= @unimar_contacts[:mail] %>
        </a>

        <a
          class="flex gap-2 items-center underline hover:opacity-90 transition-all duration-500"
          href={"tel:" <> @unimar_contacts.phone}
        >
          <.icon name="hero-phone-solid" class="h-4 md:h-6" />
          <%= @unimar_contacts.formated_phone %>
        </a>
      </address>
    </footer>
    """
  end

  @doc """
  Provides a login form template to login page.

  ## Examples

      <.login_form_template>

      <./login_form_template>
  """
  attr :user_type, :string
  attr :onsubmit, :string
  slot :inner_block, required: true

  def login_form_template(assigns) do
    ~H"""
    <article class="hidden gap-2 lg:w-1/2 justify-center" id={"#{@user_type}-login-form"}>
      <NieempWeb.ButtonComponents.button
        class="bg-ni-black border-2 border-ni-black text-ni-white !p-2 !h-fit !w-fit"
        onclick={"closeLoginForm('#{@user_type}')"}
      >
        <.icon class="text-ni-white" name="hero-x-mark" />
      </NieempWeb.ButtonComponents.button>

      <form
        class="border-2 border-ni-black p-6 gap-3 rounded-3xl flex flex-col sm:min-w-[400px]"
        onsubmit={@onsubmit}
      >
        <%= render_slot(@inner_block) %>
      </form>
    </article>
    """
  end
end
