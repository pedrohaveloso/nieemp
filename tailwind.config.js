/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./resources/**/*.blade.php",
    "./resources/**/*.js",
    "./resources/**/*.svelte",
  ],
  theme: {
    colors: {
      'black': '#262626',
      'white': '#FCFCFC',
      'dark-blue': '#2653A3',
    },

    fontFamily: {
      'sans': ['Montserrat'],
    },

    extend: {
    },
  },
  plugins: [],
}

