FROM nginx:1.19.2-alpine

WORKDIR /app

COPY user/ .

RUN sed -i '1idaemon off;' /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx"]
