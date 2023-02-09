gen:
	protoc --proto_path=proto proto/*.proto --go_out=. --go-grpc_out=.
	protoc --dart_out=grpc:dart/lib/ -Iproto proto/*.proto
