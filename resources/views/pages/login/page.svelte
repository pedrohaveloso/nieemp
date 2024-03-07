<script lang="ts">
    import FooterComponent from "$components/FooterComponent.svelte";
    import PrimaryButtonComponent from "$components/buttons/PrimaryButtonComponent.svelte";
    import CampusLayoutComponent from "$components/layouts/CampusLayoutComponent.svelte";
    import { images } from "../../utils/images";
</script>

<CampusLayoutComponent>
    <header class="flex gap-4 items-center justify-between p-5 w-full">
        <a href="/">
            <img
                class="h-16 hover:opacity-90 transition-all duration-500"
                src={images.logos.nieempName}
                alt="Logo Unimar"
            />
        </a>

        <a href="https://unimar.br/" target="_blank">
            <img
                class="h-12 hover:opacity-90 transition-all duration-500"
                src={images.logos.unimar}
                alt="Logo Unimar"
            />
        </a>
    </header>

    <main>
        <article
            class="flex flex-col gap-4 items-center justify-center bg-white p-4 rounded-3xl"
        >
            <h1 class="text-xl font-bold">
                Escolha o tipo de usuário para entrar:
            </h1>

            <menu class="flex gap-2">
                <li>
                    <PrimaryButtonComponent class="bg-black">
                        Aluno
                    </PrimaryButtonComponent>
                </li>

                <li>
                    <PrimaryButtonComponent class="bg-black">
                        Egresso
                    </PrimaryButtonComponent>
                </li>

                <li>
                    <PrimaryButtonComponent class="bg-black">
                        Empresa
                    </PrimaryButtonComponent>
                </li>

                <li>
                    <PrimaryButtonComponent class="bg-black">
                        Administrador
                    </PrimaryButtonComponent>
                </li>
            </menu>
        </article>
    </main>

    <FooterComponent />
</CampusLayoutComponent>
