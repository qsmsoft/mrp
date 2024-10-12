build:
	@go build -o bin/mrp

run: build
	@./bin/mrp

test:
	@go test -v ./...