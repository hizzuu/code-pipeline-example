.PHONY: up
up:
	docker-compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: log
log:
	docker-compose logs -f ${name}

.PHONY: exec
exec:
	docker exec -it app sh

.PHONY: test
test:
	docker-compose run --rm app go test ./...

.PHONY: lint
lint:
	docker-compose run --rm app go vet ./...

.PHONY: build
build:
	docker-compose run --rm app go build -o deploy/code-pipeline-example cmd/main.go
