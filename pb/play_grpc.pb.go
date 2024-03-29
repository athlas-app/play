// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             v3.21.12
// source: play.proto

package pb

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

const (
	Play_CreateGame_FullMethodName = "/Play/CreateGame"
)

// PlayClient is the client API for Play service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type PlayClient interface {
	CreateGame(ctx context.Context, in *CreateGameRequest, opts ...grpc.CallOption) (*CreateGameResponse, error)
}

type playClient struct {
	cc grpc.ClientConnInterface
}

func NewPlayClient(cc grpc.ClientConnInterface) PlayClient {
	return &playClient{cc}
}

func (c *playClient) CreateGame(ctx context.Context, in *CreateGameRequest, opts ...grpc.CallOption) (*CreateGameResponse, error) {
	out := new(CreateGameResponse)
	err := c.cc.Invoke(ctx, Play_CreateGame_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// PlayServer is the server API for Play service.
// All implementations must embed UnimplementedPlayServer
// for forward compatibility
type PlayServer interface {
	CreateGame(context.Context, *CreateGameRequest) (*CreateGameResponse, error)
	mustEmbedUnimplementedPlayServer()
}

// UnimplementedPlayServer must be embedded to have forward compatible implementations.
type UnimplementedPlayServer struct {
}

func (UnimplementedPlayServer) CreateGame(context.Context, *CreateGameRequest) (*CreateGameResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateGame not implemented")
}
func (UnimplementedPlayServer) mustEmbedUnimplementedPlayServer() {}

// UnsafePlayServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to PlayServer will
// result in compilation errors.
type UnsafePlayServer interface {
	mustEmbedUnimplementedPlayServer()
}

func RegisterPlayServer(s grpc.ServiceRegistrar, srv PlayServer) {
	s.RegisterService(&Play_ServiceDesc, srv)
}

func _Play_CreateGame_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateGameRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PlayServer).CreateGame(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: Play_CreateGame_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PlayServer).CreateGame(ctx, req.(*CreateGameRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// Play_ServiceDesc is the grpc.ServiceDesc for Play service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var Play_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "Play",
	HandlerType: (*PlayServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateGame",
			Handler:    _Play_CreateGame_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "play.proto",
}
