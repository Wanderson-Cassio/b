FROM node:18

WORKDIR /app

# Copia todos os arquivos no diretório onde se econtra o Dockerfile para o diretório definido /app
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

# Define o comando para iniciar a API
CMD ["node", "server.mjs"]