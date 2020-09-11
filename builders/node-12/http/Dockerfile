FROM node:12-slim

WORKDIR /app

# internal package.json
COPY builder/package.json builder/package-lock.json ./
RUN npm ci

COPY builder/entrypoint.js .
COPY common/ ./common/

WORKDIR /app/user

COPY user/package.json user/package-lock.json* user/yarn.lock* ./

RUN sh ../common/install.sh
COPY user/ .
WORKDIR /app

EXPOSE 8080

# TODO healthcheck

CMD ["node", "entrypoint.js"]
