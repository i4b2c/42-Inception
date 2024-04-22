all: nginx

nginx:
	docker-compose -f ./srcs/docker-compose.yml up
