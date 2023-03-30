# play

This is a Go gRPC server for all features related to individual matches

## TODO:

[ ] Set up documentation about converting JSON to YAML for openapi files

## Getting Started

Before starting, you need to [install Go]("https://www.github.com/athlas-app"), [install Dart]("https://www.github.com/athlas-app") and the Protocol Buffer compiler (protoc) on your machine.
You can install `protoc` by running `brew install protobuf`

### Setting up Golang

You also need to install the `protoc-gen-go` and `protoc-gen-go-grpc` plugins. You can use the following commands to install the necessary dependencies:

```bash
$ go install google.golang.org/protobuf/cmd/protoc-gen-go
$ go install google.golang.org/grpc/cmd/protoc-gen-go-grpc
```

After installing the dependencies, you can clone the repository and install the necessary packages by running:

```bash
$ git clone git@github.com:athlas-app/play.git
$ cd play
$ go mod download
```

### Setting up Dart

To install Dart, run the following commands:

```bash
$ brew tap dart-lang/dart
$ brew install dart
```

To install the Dart protoc plugin, run:

```bash
$ dart pub global activate protoc_plugin
```

## Running the Server Locally

To run the server locally, use the following command:

```bash
$ go run main.go
```

By default, the server will listen on port 8080. You can change the port by modifying the address constant in the server.go file.

## Generating PB Files

Before you can use the gRPC server, you need to generate the necessary PB files for both Go and Dart. You can generate these files by running:

```bash
$ brew install make # If you don't already have installed
$ make gen
```

This will generate the necessary PB files in the pb directory for Go and in the dart directory for Dart.
