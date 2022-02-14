export POSTGRESQL_URL="postgres://postgres:postgres@localhost:5432/bigmochi_db?sslmode=disable"
migrate -database ${POSTGRESQL_URL} -path db/migrations up
