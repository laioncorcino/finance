createDB:
	createdb --username=postgres --owner=postgres finance

postgres:
	docker run --name finance -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d postgres

db_schema_up:
	migrate -path db/migration -database "postgres://postgres:postgres@localhost:5432/finance?sslmode=disable" -verbose up

db_schema_drop:
	migrate -path db/migration -database "postgres://postgres:postgres@localhost:5432/finance?sslmode=disable" -verbose drop

.PHONY: createDb postgres