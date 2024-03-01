<script lang="ts">
    import LayoutCampusUnimar from "$components/layouts/LayoutCampusUnimar.svelte";

    import { images } from "../utils/images";

    const currentYear = new Date().getFullYear();

    const unimarContacts = {
        mail: "falecom@unimar.br",
        phone: "+551421054000",
        formatedPhone: "+55 (14) 2105-4000",
    };
</script>

<LayoutCampusUnimar></LayoutCampusUnimar>

<div style="background-image: url('{images.photos.campusUnimar}')">
    <div
        class="flex flex-col justify-between w-full h-screen items-center bg-white bg-opacity-90"
    >
        <header
            class="flex flex-col sm:flex-row gap-4 items-center justify-between p-5 w-full"
        >
            <a href="https://unimar.br/" target="_blank">
                <img
                    class="h-12 hover:opacity-90 transition-all duration-500"
                    src={images.logos.unimar}
                    alt="Logo Unimar"
                />
            </a>

            <menu class="flex gap-1 sm:gap-3 w-full justify-end">
                <li class="w-full sm:w-fit">
                    <a class="w-full sm:w-fit" href="/register">
                        <button
                            class="text-sm w-full sm:w-fit sm:text-base flex items-center justify-center gap-3 px-4 sm:px-8 py-4 text-white font-medium bg-dark-blue rounded-xl hover:opacity-90 transition-all duration-500"
                            type="button"
                        >
                            Registrar-se

                            <img
                                class="h-3 sm:h-5"
                                src={images.icons.register}
                                alt="Ícone Registrar-se"
                            />
                        </button>
                    </a>
                </li>

                <li class="w-full sm:w-fit">
                    <a class="w-full sm:w-fit" href="/login">
                        <button
                            class="text-sm w-full sm:w-fit sm:text-base flex items-center justify-center gap-3 px-4 sm:px-8 py-4 text-white font-medium bg-black rounded-xl hover:opacity-90 transition-all duration-500"
                            type="button"
                        >
                            Entrar

                            <img
                                class="h-3 sm:h-5"
                                src={images.icons.login}
                                alt="Ícone Entrar"
                            />
                        </button>
                    </a>
                </li>
            </menu>
        </header>

        <main>
            <a href="/">
                <img
                    class="h-28 sm:h-48 md:h-64 lg:h-72"
                    src={images.logos.nieemp}
                    alt="Logo Nieemp"
                />
            </a>
        </main>

        <footer
            class="text-xs md:text-sm gap-2 lg:text-base flex flex-col sm:flex-row items-start sm:items-center justify-between p-5 font-bold w-full"
        >
            <a
                class="hover:opacity-90 transition-all duration-500 text-dark-blue"
                target="_blank"
                href="https://unimar.br/"
            >
                Universidade de Marília | {currentYear}
            </a>

            <address
                class="flex flex-col sm:flex-row gap-1 sm:gap-4 md:gap-6 not-italic"
            >
                Fale conosco:

                <a
                    class="flex gap-1 items-center underline hover:opacity-90 transition-all duration-500"
                    href="mailto:{unimarContacts.mail}"
                >
                    <img
                        class="h-3 md:h-4"
                        src={images.icons.mail}
                        alt="Ícone E-mail"
                    />

                    {unimarContacts.mail}
                </a>

                <a
                    class="flex gap-1 items-center underline hover:opacity-90 transition-all duration-500"
                    href="tel:{unimarContacts.phone}"
                >
                    <img
                        class="h-3 md:h-4"
                        src={images.icons.call}
                        alt="Ícone Telefone"
                    />

                    {unimarContacts.formatedPhone}
                </a>
            </address>
        </footer>
    </div>
</div>
