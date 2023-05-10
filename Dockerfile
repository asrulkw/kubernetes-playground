FROM node:18-alpine

WORKDIR /app

COPY simple-app/package.json /app

COPY simple-app/package-lock.json /app

RUN npm install

COPY simple-app/ .

EXPOSE 3000

CMD ["npm", "start"]