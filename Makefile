PROTO_DIR = auth/proto
GO_OUT_DIR = auth/gen/go

gen:
	mkdir -p $(GO_OUT_DIR)
	protoc -I=$(PROTO_DIR) \
		$(PROTO_DIR)/auth.proto \
		--go_out=$(GO_OUT_DIR) --go_opt=paths=source_relative \
		--go-grpc_out=$(GO_OUT_DIR) --go-grpc_opt=paths=source_relative

.PHONY: gen
