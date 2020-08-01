FROM node:12-slim

WORKDIR /app

# internal package.json
COPY deploy-builders/builders/node12/http/package.json deploy-builders/builders/node12/http/package-lock.json ./
RUN npm ci

COPY deploy-builders/builders/node12/http/entrypoint.js .

WORKDIR /app/user

COPY user/package.json ./
# TODO lockfiles
RUN npm install

COPY user/ .

WORKDIR /app

EXPOSE 8080

# TODO healthcheck

CMD ["node", "entrypoint.js"]
