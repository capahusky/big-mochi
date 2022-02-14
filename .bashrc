export POSTGRESQL_URL="postgres://big-mochi:big-mochi_pass@localhost:5432/bucketeer_db?sslmode=disable"
migrate -database ${POSTGRESQL_URL} -path db/migrations up
