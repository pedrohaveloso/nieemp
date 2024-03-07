<!--
    @component

    ## FooterComponent.

    Componente de rodapé padrão.

    ### Como usar:

    ```svelte
    <script lang="ts">
        import FooterComponent from '@components/layouts/FooterComponent.svelte';
    </script>

    <FooterComponent />
    ```
-->

<script lang="ts">
    import { images } from "../utils/images";

    const currentYear = new Date().getFullYear();

    const unimarContacts = {
        mail: "falecom@unimar.br",
        phone: "+551421054000",
        formatedPhone: "+55 (14) 2105-4000",
    };
</script>

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
