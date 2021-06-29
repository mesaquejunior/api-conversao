FROM node:14.16.1-alpine3.13
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm install
EXPOSE 8080
CMD ["node", "index.js"]