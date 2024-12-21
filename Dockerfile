FROM node:23-alpine
RUN mkdir -p /home/node/app/node_modules
WORKDIR /home/node/app
COPY ** ./
RUN npm install
EXPOSE 3000
CMD [ "node", "index.js" ]