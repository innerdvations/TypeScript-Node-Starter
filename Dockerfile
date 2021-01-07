FROM node:15

WORKDIR /usr/src/app

ADD package.json /usr/src/app

ADD package-lock.json /usr/src/app

ADD . /usr/src/app 

RUN npm ci

RUN npm run build 

CMD [ "npm", "run", "watch"]
