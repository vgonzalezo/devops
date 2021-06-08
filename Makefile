start:
	docker stack deploy -c devops.yml devops-tools

build:
	docker build -t demo-app ./app

deploy:
	docker rm -f demo-app
	docker run -itd --name demo-app -p 80:80 demo-app:latest

stop:
	docker stack rm devops-tools
