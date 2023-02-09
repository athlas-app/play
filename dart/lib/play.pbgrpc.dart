///
//  Generated code. Do not modify.
//  source: play.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'models.pb.dart' as $0;
export 'play.pb.dart';

class PlayClient extends $grpc.Client {
  static final _$createGame =
      $grpc.ClientMethod<$0.CreateGameRequest, $0.CreateGameResponse>(
          '/Play/CreateGame',
          ($0.CreateGameRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateGameResponse.fromBuffer(value));
  static final _$createTest =
      $grpc.ClientMethod<$0.CreateGameRequest, $0.CreateGameResponse>(
          '/Play/CreateTest',
          ($0.CreateGameRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateGameResponse.fromBuffer(value));

  PlayClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateGameResponse> createGame(
      $0.CreateGameRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGame, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateGameResponse> createTest(
      $0.CreateGameRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTest, request, options: options);
  }
}

abstract class PlayServiceBase extends $grpc.Service {
  $core.String get $name => 'Play';

  PlayServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateGameRequest, $0.CreateGameResponse>(
        'CreateGame',
        createGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateGameRequest.fromBuffer(value),
        ($0.CreateGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateGameRequest, $0.CreateGameResponse>(
        'CreateTest',
        createTest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateGameRequest.fromBuffer(value),
        ($0.CreateGameResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateGameResponse> createGame_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateGameRequest> request) async {
    return createGame(call, await request);
  }

  $async.Future<$0.CreateGameResponse> createTest_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateGameRequest> request) async {
    return createTest(call, await request);
  }

  $async.Future<$0.CreateGameResponse> createGame(
      $grpc.ServiceCall call, $0.CreateGameRequest request);
  $async.Future<$0.CreateGameResponse> createTest(
      $grpc.ServiceCall call, $0.CreateGameRequest request);
}
