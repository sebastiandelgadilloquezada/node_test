FROM node:20-alpine3.20

WORKDIR /usr/app

COPY package.json .

RUN npm install

COPY . .

COPY .env /app/

EXPOSE 3010

CMD npm start