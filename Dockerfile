FROM node
WORKDIR /app
COPY package.json ./
RUN npm install
ENV ENV_NODE production
COPY . .
CMD [ "node","server.js" ]
EXPOSE 3000