up:
	docker-compose up
build:
	docker-compose build
db/create:
	docker-compose exec api rails db:create
db/apply:
	docker-compose exec api ridgepole -c config/database.yml --apply -f db/Schemafile
