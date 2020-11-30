default:

up:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up

build:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml build

down:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml down

db/prepare:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec api rails db:prepare
	make db/apply
	
db/create:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec api rails db:create

db/apply:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec api ridgepole -c config/database.yml --apply -f db/Schemafile
