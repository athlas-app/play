package main

import (
	"context"
	"log"
	"net"
	"os"

	pb "github.com/athlas-app/play/pb"

	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

type server struct {
	pb.UnimplementedPlayServer
}

func (s *server) CreateGame(ctx context.Context, in *pb.CreateGameRequest) (*pb.CreateGameResponse, error) {
	log.Printf("Received request: %v", in.ProtoReflect().Descriptor().FullName())
	return &pb.CreateGameResponse{
		CreatedGame: &pb.Game{
			Id:           "123",
			Owner:        "123",
			Participants: []string{"123", "456"},
			Status:       pb.GameStatus_LISTED,
		},
	}, nil
}

func main() {
	log.Default().Println("Starting gRPC server...")

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
		log.Printf("Defaulting to port %s", port)
	}

	lis, err := net.Listen("tcp", ":"+port)
	if err != nil {
		panic(err)
	}

	grpcServer := grpc.NewServer()
	reflection.Register(grpcServer)
	pb.RegisterPlayServer(grpcServer, &server{})

	if err := grpcServer.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %s", err)
	}
}
