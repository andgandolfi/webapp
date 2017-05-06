FROM node:latest
MAINTAINER andgandolfi@gmail.com
WORKDIR /app
COPY package.json /app/package.json
RUN npm install
COPY index.js /app
COPY src /app/src
COPY test /app/test
COPY script /app/script
USER nobody
EXPOSE 3000
CMD ["node","index.js"]
