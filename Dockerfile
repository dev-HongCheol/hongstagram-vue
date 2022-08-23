FROM nginx:stable-alpine-perl
COPY dist/spa /usr/share/nginx/html
EXPOSE 80 