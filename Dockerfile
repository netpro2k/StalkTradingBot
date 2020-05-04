FROM node:13

WORKDIR /var/app

COPY package*.json ./
COPY config/config.example.js ./config/
COPY *.js ./

RUN npm ci

CMD [ "node", "index.js" ]
