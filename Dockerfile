FROM node:16-alpine

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm install -g @angular/cli@12.0.2

RUN npm install

COPY . /app/

CMD ["ng", "serve", "--host", "0.0.0.0"]
