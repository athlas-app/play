///
//  Generated code. Do not modify.
//  source: play.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'models.pb.dart' as $0;

class PlayApi {
  $pb.RpcClient _client;
  PlayApi(this._client);

  $async.Future<$0.CreateGameResponse> createGame($pb.ClientContext? ctx, $0.CreateGameRequest request) {
    var emptyResponse = $0.CreateGameResponse();
    return _client.invoke<$0.CreateGameResponse>(ctx, 'Play', 'CreateGame', request, emptyResponse);
  }
  $async.Future<$0.CreateGameResponse> createTest($pb.ClientContext? ctx, $0.CreateGameRequest request) {
    var emptyResponse = $0.CreateGameResponse();
    return _client.invoke<$0.CreateGameResponse>(ctx, 'Play', 'CreateTest', request, emptyResponse);
  }
}

