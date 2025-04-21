FROM nginx:latest
RUN apt-get update && apt-get install -y systemd nginx
WORKDIR /usr/share/nginx/html/
COPY . /usr/share/nginx/html/
CMD ["systemctl restart nginx"]
EXPOSE 80
CMD ["/lib/systemd/systemd"]
