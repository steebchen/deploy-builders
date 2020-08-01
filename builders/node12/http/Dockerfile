FROM node:12-slim

WORKDIR /app

# internal package.json
COPY package.json package-lock.json ./
RUN npm ci

COPY entrypoint.js .

WORKDIR /app/user

COPY user/package.json ./
# TODO lockfiles
RUN npm install

COPY user/ .

WORKDIR /app

EXPOSE 8080

# TODO healthcheck

CMD ["node", "entrypoint.js"]
