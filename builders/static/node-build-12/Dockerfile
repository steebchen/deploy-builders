FROM node:12-alpine as builder

WORKDIR /app

COPY user/package.json user/package-lock.json* user/yarn.lock* ./
COPY common/ ./common/
RUN sh ./common/install.sh

WORKDIR /app/user

COPY user/ .
RUN npm run build
RUN cp -r $(node -e "console.log(require('./package.json').output || 'build')") out

FROM nginx:1.19.2-alpine
RUN sed -i '1idaemon off;' /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/user/out /app

EXPOSE 8080
CMD ["nginx"]
