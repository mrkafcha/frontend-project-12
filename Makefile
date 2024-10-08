lint-frontend:
	make -C frontend lint

install:
	npm ci && make -C frontend install

start-frontend:
	cd frontend && npm start

start-backend:
	npm run start

deploy:
	git push heroku main

start:
	make start-backend

develop:
	make start-backend & make start-frontend

build:
	rm -rf frontend/build
	npm run build