all: nginx

nginx:
	docker-compose -f ./srcs/docker-compose.yml up
git:
	git add *
	git commit -m .
	git push
docker:
	docker container ls -a
	docker images
clean: 
	docker container prune -f
