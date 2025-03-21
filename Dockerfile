FROM node:22.14.0-alpine

WORKDIR /app

COPY ./app/package.json ./app/npm.lock* ./

RUN npm install

COPY ./app .

CMD ["npm", "run", "dev"]