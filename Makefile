
bash:
	docker-compose -i -t l-mysql bash
mysql:
	docker exec -i -t l-mysql mysql -uroot -ppassword

	
up:
	docker-compose up
build:
	docker-compose build
down:
	docker-compose down
docker-rm:
	docker-compose rm
