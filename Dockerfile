FROM node:25.3.0-alpine3.23

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

CMD npm start
