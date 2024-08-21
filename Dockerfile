FROM node:20-alpine3.20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3010

RUN npm run build

CMD [ "npm", "run", "start:dev" ]