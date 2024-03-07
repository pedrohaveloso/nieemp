<!--
    @component

    ## CampusLayoutComponent.

    Layout com um fundo do campus da Unimar, fundo borrado em 90%.

    ### Como usar:

    ```svelte
    <script lang="ts">
        import CampusLayoutComponent from '@components/layouts/CampusLayoutComponent.svelte';
    </script>

    <CampusLayoutComponent>
        <h1>Olá, Mundo.</h1>
    </CampusLayoutComponent>
    ```
-->

<script lang="ts">
    import { images } from "../../utils/images";
</script>

<div style="background-image: url('{images.photos.campusUnimar}')">
    <div
        class="flex flex-col justify-between w-full h-screen items-center bg-white bg-opacity-90"
    >
        <slot />
    </div>
</div>
