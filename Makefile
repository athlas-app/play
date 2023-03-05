gen:
	protoc \
		--go_out=. --go-grpc_out=. \
		--grpc-gateway_out pb \
		--grpc-gateway_opt logtostderr=true \
		--grpc-gateway_opt paths=source_relative \
		--grpc-gateway_opt generate_unbound_methods=true \
		--proto_path=proto proto/*.proto
	protoc --dart_out=grpc:dart/lib/ -Iproto proto/*.proto
