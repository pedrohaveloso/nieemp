import "./bootstrap";
import "../css/app.css";

import { createInertiaApp } from '@inertiajs/svelte'

createInertiaApp({
    resolve: (name) => {
        const pages = import.meta.glob(
            '../views/pages/**/*.svelte',
            { eager: true }
        );

        return pages[`../views/pages/${name}.svelte`]
    },

    setup: ({ el, App, props }) => {
        new App({ target: el, props })
    },
})