export GOPATH=$(shell go env GOPATH)

.PHONY: generate
generate:
	@echo "Generating protobuf files..."
	protoc \
		--plugin=protoc-gen-go=$(GOPATH)/bin/protoc-gen-go \
		--plugin=protoc-gen-go-grpc=$(GOPATH)/bin/protoc-gen-go-grpc \
		--go_out=. \
        --go-grpc_out=. \
        ./api/*.proto
	@echo "Done!"