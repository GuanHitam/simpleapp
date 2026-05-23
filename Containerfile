#FROM registry.redhat.io/ubi10/nginx-126
FROM docker.io/library/nginx:latest

COPY ./resources/app/index.html /usr/share/nginx/html/index.html
COPY ./resources/app/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

