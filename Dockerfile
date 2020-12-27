FROM node:15.5-alpine

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

COPY prisma/schema.prisma ./prisma/
RUN npx prisma generate

COPY . .

RUN yarn build

EXPOSE 8080
CMD [ "yarn", "start" ]
