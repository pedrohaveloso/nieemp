import { defineConfig } from "vite";
import { svelte } from "@sveltejs/vite-plugin-svelte";
import laravel from "laravel-vite-plugin";
import sveltePreprocess from 'svelte-preprocess';
import path from 'path';

export default defineConfig({
    plugins: [
        svelte({
            preprocess: [sveltePreprocess({ typescript: true })],
        }),
        laravel({
            input: ["resources/css/app.css", "resources/js/app.js"],
            refresh: true,
        }),
    ],
    resolve: {
        alias: {
            $components: path.resolve('./resources/views/components'),
        },
    },
});

