gen:
	protoc --proto_path=proto proto/*.proto --go_out=. --go-grpc_out=.
	protoc --proto_path=proto proto/*.proto --dart_out=dart/lib
