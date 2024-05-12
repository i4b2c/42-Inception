FROM ubuntu:20.04

#Installing the programs to execute the nginx
RUN apt update -y && apt upgrade -y && apt install -y \
	nginx \
	openssl

#Nginx ssl
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/icaldas.crt \
	-keyout /etc/nginx/ssl/icaldas.key \
	-subj "/C=PT/ST=Porto/L=Porto/O=42 Porto/OU=icaldas/CN=icaldas/"

COPY ./conf /etc/nginx
COPY ./html /var/www/html

RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx","-g","daemon off;"]
