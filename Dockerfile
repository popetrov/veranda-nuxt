FROM node:14.18.1-alpine

WORKDIR /nuxt-app

COPY package.json /nuxt-app

RUN npm install

COPY . /nuxt-app

RUN npm run generate
RUN npm run build

EXPOSE 3000

VOLUME [ "/nuxt-app" ]

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

CMD [ "npm", "start" ]
