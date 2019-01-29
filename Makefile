run:
	docker-compose run --rm --service-ports web

shell:
	docker-compose run --rm web sh
