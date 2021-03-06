FROM mhart/alpine-node:4.2.1

ADD . /app
WORKDIR /app

RUN npm install

ENV NODE_ENV production
ENV PORT 80

EXPOSE 80

ENTRYPOINT "/bin/sh"
CMD ["node", "server.js"]
