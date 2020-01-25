docker-build:
	sudo docker build . -t docker-ara

docker-run-ara:
	sudo docker run --network ara-network --detach -p 8000:8000 --name docker-ara  laurentfdumont/docker-ara:latest

docker-run-postgres:
	sudo docker run --network ara-network --name ara-postgres -p 5432:5432 -e POSTGRES_PASSWORD=password123 -e POSTGRES_USER=ara_user -e POSTGRES_DB=ara -d postgres

docker-push:
	sudo docker login && sudo docker tag docker-ara:latest laurentfdumont/docker-ara:latest && sudo docker push laurentfdumont/docker-ara:latest
