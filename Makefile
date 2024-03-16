# dokcer
build:
	docker-compose build
up:
	docker-compose up -d
app:
	docker-compose exec app bash
next:
	docker-compose exec next bash
# rust
# next.js
front-server:
	cd frontend
	npm run dev
