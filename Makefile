.PHONY: run test vet fmt fmt-check lint check

run:
	go run ./cmd/factoryline

test:
	go test -race ./...

vet:
	go vet ./...

fmt:
	gofmt -w .

fmt-check:
	@test -z "$$(gofmt -l .)" || (echo "Not formatted:"; gofmt -l .; exit 1)

lint:
	golangci-lint run

check: fmt-check vet test
