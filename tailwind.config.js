/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/views/**/*.{html,html.erb,erb}',
    './app/frontend/**/*.{vue,js,ts,jsx,tsx}'
  ],
  theme: {
    extend: {
      colors: {
        'ibedec-blue': {
          100: '#4455c5',
          200: '#3a4bbb',
          300: '#3545ac',
          400: '#303e9c',
          500: '#293685',
          600: '#26327d',
          700: '#222c6d',
          800: '#1d255e',
          900: '#181f4e',
        },
        'ibedec-yellow': {
          100: '#feeb5d',
          200: '#fee948',
          300: '#fee634',
          400: '#fee420',
          500: '#fee101',
          600: '#f4d701',
          700: '#dfc501',
          800: '#cbb301',
          900: '#b7a101',
        }
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
  ],
}
