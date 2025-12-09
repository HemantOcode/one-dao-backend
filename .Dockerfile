FROM node:18-alpine3.18

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

COPY .env .

RUN npm run build

EXPOSE 3000

CMD ["node", "dist/index.js"]