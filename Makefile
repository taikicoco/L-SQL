up:
	docker-compose up -d
bash:
	docker exec -i -t mysql bash
mysql:
	docker exec -i -t mysql mysql -uroot -ppassword -Dsakila
down:
	docker-compose down
	
docker-build:
	docker-compose build
docker-stop:
	docker-compose stop
docker-rm:
	docker-compose rm

docker-server: docker-build up
docker-clean: docker-stop docker-rm
