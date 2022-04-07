FROM node:12-alpine

ENV NODE_ENV="production" PORT="9000"
EXPOSE ${PORT}

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

CMD [ "sh", "docker-entrypoint.sh" ]
