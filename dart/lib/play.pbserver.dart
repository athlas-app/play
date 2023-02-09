///
//  Generated code. Do not modify.
//  source: play.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'models.pb.dart' as $0;
import 'play.pbjson.dart';

export 'play.pb.dart';

abstract class PlayServiceBase extends $pb.GeneratedService {
  $async.Future<$0.CreateGameResponse> createGame($pb.ServerContext ctx, $0.CreateGameRequest request);
  $async.Future<$0.CreateGameResponse> createTest($pb.ServerContext ctx, $0.CreateGameRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateGame': return $0.CreateGameRequest();
      case 'CreateTest': return $0.CreateGameRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateGame': return this.createGame(ctx, request as $0.CreateGameRequest);
      case 'CreateTest': return this.createTest(ctx, request as $0.CreateGameRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PlayServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PlayServiceBase$messageJson;
}

