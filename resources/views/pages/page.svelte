<script lang="ts">
    import FooterComponent from "$components/FooterComponent.svelte";
    import PrimaryButtonComponent from "$components/buttons/PrimaryButtonComponent.svelte";
    import CampusLayoutComponent from "$components/layouts/CampusLayoutComponent.svelte";
    import { images } from "../utils/images";
</script>

<CampusLayoutComponent>
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
                    <PrimaryButtonComponent class="bg-dark-blue">
                        Registrar-se

                        <img
                            class="h-3 sm:h-5"
                            src={images.icons.whiteRegister}
                            alt="Ícone Registrar-se"
                        />
                    </PrimaryButtonComponent>
                </a>
            </li>

            <li class="w-full sm:w-fit">
                <a class="w-full sm:w-fit" href="/login">
                    <PrimaryButtonComponent class="bg-black">
                        Entrar

                        <img
                            class="h-3 sm:h-5"
                            src={images.icons.whiteLogin}
                            alt="Ícone Entrar"
                        />
                    </PrimaryButtonComponent>
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

    <FooterComponent />
</CampusLayoutComponent>
