FROM node:16.8.0-alpine3.13

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

CMD npm start
