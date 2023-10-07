FROM node:20-alpine3.17

# Instalar un servidor HTTP
RUN npm install -g http-server

# Abrir la carpeta "app"
WORKDIR /app

# Copiar el "package.json" a la ruta principal del proyecto
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar los archivos
COPY . .

RUN npm run build

EXPOSE 8080
CMD ["http-server", "dist"]
