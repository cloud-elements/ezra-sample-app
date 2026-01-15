FROM node:25.3.0-alpine3.23
WORKDIR /usr/src/app
COPY . .
RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash git && \
    npm install

EXPOSE 3000
CMD [ "npm", "start" ]