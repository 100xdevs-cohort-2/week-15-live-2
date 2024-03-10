FROM ubuntu:latest

WORKDIR /usr/src/app

COPY package.json .
COPY package-lock.json .
COPY src


RUN npm install
RUN npm run build
RUN npx prisma generate


EXPOSE 3000

CMD ["node", "dist/index.js", ]