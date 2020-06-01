FROM node:10

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

RUN npm install 
RUN npm install pm2 -g
# Expose the listening port of your app
EXPOSE 8000

CMD [ "node", "app.js" ]
