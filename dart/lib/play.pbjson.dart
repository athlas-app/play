///
//  Generated code. Do not modify.
//  source: play.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'models.pbjson.dart' as $0;

const $core.Map<$core.String, $core.dynamic> PlayServiceBase$json = const {
  '1': 'Play',
  '2': const [
    const {'1': 'CreateGame', '2': '.CreateGameRequest', '3': '.CreateGameResponse', '4': const {}},
    const {'1': 'CreateTest', '2': '.CreateGameRequest', '3': '.CreateGameResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use playServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> PlayServiceBase$messageJson = const {
  '.CreateGameRequest': $0.CreateGameRequest$json,
  '.CreateGameResponse': $0.CreateGameResponse$json,
  '.Game': $0.Game$json,
};

/// Descriptor for `Play`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List playServiceDescriptor = $convert.base64Decode('CgRQbGF5EjcKCkNyZWF0ZUdhbWUSEi5DcmVhdGVHYW1lUmVxdWVzdBoTLkNyZWF0ZUdhbWVSZXNwb25zZSIAEjcKCkNyZWF0ZVRlc3QSEi5DcmVhdGVHYW1lUmVxdWVzdBoTLkNyZWF0ZUdhbWVSZXNwb25zZSIA');
