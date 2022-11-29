createDb:
	createdb --username=postgres --owner=postgres finance

postgres:
	docker run --name finance -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d postgres:14-alpine

migrationUp:
	migrate -path db/migration -database "postgres://postgres:postgres@localhost:5432/finance?sslmode=disable" -verbose up

migrationDrop:
	migrate -path db/migration -database "postgres://postgres:postgres@localhost:5432/finance?sslmode=disable" -verbose drop

.PHONY: createDb postgres
