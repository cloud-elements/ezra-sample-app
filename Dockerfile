FROM node:23.11.1-alpine3.21
WORKDIR /usr/src/app
COPY . .
RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash git && \
    npm install

EXPOSE 3000
CMD [ "npm", "start" ]