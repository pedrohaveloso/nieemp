<!--
    @component

    ## PrimaryButtonComponent.

    Layout com um fundo do campus da Unimar, fundo borrado em 90%.

    ### Como usar:

    ```svelte
    <script lang="ts">
        import PrimaryButtonComponent from '@components/layouts/PrimaryButtonComponent.svelte';
    </script>

    <PrimaryButtonComponent class="bg-black">
        Olá, Mundo
    </PrimaryButtonComponent>
    ```
-->

<script lang="ts">
    let className: string;

    /** Cor do tailwind e demais estilos. */
    export { className as class };
</script>

<button
    class="{className} text-sm w-full sm:w-fit sm:text-base flex items-center justify-center gap-3 px-4 sm:px-8 py-4 text-white font-medium rounded-xl hover:opacity-90 transition-all duration-500"
    type="button"
>
    <slot />
</button>
