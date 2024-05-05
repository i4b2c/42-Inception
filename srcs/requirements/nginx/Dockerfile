FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y nginx

COPY default /etc/nginx/sites-available/. 

CMD ["nginx","-g","daemon off;"]
