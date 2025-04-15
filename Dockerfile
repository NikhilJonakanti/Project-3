FROM nginx:latest
WORKDIR /usr/share/nginx/html/
COPY . /usr/share/nginx/html/
CMD ["systemctl restart nginx"]
EXPOSE 8082
