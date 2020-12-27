FROM node:15.5-alpine

# Add dependencies for building packages
# RUN apk --no-cache add --virtual .builds-deps build-base python

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

# COPY prisma/schema.prisma ./prisma/
# RUN npx prisma generate

COPY . .

RUN yarn build

EXPOSE 8080
CMD [ "yarn", "start" ]
