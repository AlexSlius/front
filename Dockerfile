FROM node

WORKDIR /usr/src/app

COPY package*.json /usr/src/app
RUN npm i

COPY . .

RUN npm run build

CMD [ "npm", "run", "start" ]