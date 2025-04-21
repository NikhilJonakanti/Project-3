FROM nginx:latest

RUN apt-get update && apt-get install -y systemd nginx

COPY . /usr/share/nginx/html/

EXPOSE 9090

CMD ["/lib/systemd/systemd"]
