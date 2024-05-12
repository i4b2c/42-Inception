all: exec

exec:
	docker-compose -f ./srcs/docker-compose.yml up 
