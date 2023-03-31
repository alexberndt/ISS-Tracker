FROM node:lts-alpine as build-stage

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .

ENV PORT 8080
EXPOSE 8080

CMD ["yarn", "run", "start"]