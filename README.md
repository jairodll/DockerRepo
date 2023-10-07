# Vue 3 + Vite

This template should help get you started developing with Vue 3 in Vite. The template uses Vue 3 <script setup> SFCs, check out the [script setup docs](https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup) to learn more.

## Recommended IDE Setup

- [VS Code](https://code.visualstudio.com/) + [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (and disable Vetur) + [TypeScript Vue Plugin (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin).

# Levantado a nivel de desarrollo
npm run dev

    - axios : 1.5.1
    - vue : 3.3.4
    - node > 16
    - tailwindcss

# Docker

Construccion de la imagen de docker, nombre de la imagen : dockerize-vuejs-app
docker build -t dockerize-vuejs-app .

Para correr la imagen
docker run -it -p 8080:8080 --rm --name dockerize-vuejs-app-1 dockerize-vuejs-app 

- docker run : ejecuta un nuevo contenedor
    - -it : abrir una sesion interactiva
    - -p : indica que puerto sera expuesto del contenedor hacia la maquina local
    - --rm : borrar el contenedor despues de que lo detengamos (para ahorrar espacio)
    - --name : nombre que se le dara al contenedor
    - image : imagen (dockerize-vuejs-app) que se va a construir en el contenedor (dockerize-vuejs-app-1)