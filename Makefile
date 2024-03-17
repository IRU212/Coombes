DOCKER_CMD := docker-compose -f docker-compose.yml
APP_CMD := docker-compose exec app
NEXT_CMD := docker-compose exec next
DB_CMD := docker-compose exec db

# dokcer
build:
	${DOCKER_CMD} build
up:
	${DOCKER_CMD} up -d
app:
	${DOCKER_CMD} exec app bash
next:
	${DOCKER_CMD} exec next bash
db:
	${DOCKER_CMD} exec db bash
cp-env:
	cp ./.env.example ./.env
	cp ./backend/.env.local ./backend/.env
# rust
rust-install:
	${APP_CMD} cargo add diesel --features mysql --features r2d2
	${APP_CMD} cargo add dotenv
	${APP_CMD} cargo install diesel_cli --no-default-features --features mysql
backend-server:
	${APP_CMD} cargo run
backend-build:
	${APP_CMD} cargo build
migration:
	${APP_CMD} diesel migration run
migration-redo:
	${APP_CMD} diesel migration redo
# next.js
front-server:
	${NEXT_CMD} npm run dev
