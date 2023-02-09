///
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gameStatusDescriptor instead')
const GameStatus$json = const {
  '1': 'GameStatus',
  '2': const [
    const {'1': 'LISTED', '2': 0},
    const {'1': 'PENDING', '2': 1},
    const {'1': 'CONFIRMED', '2': 2},
    const {'1': 'IN_PROGRESS', '2': 3},
    const {'1': 'COMPLETED', '2': 4},
    const {'1': 'CANCELLED', '2': 5},
  ],
};

/// Descriptor for `GameStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameStatusDescriptor = $convert.base64Decode('CgpHYW1lU3RhdHVzEgoKBkxJU1RFRBAAEgsKB1BFTkRJTkcQARINCglDT05GSVJNRUQQAhIPCgtJTl9QUk9HUkVTUxADEg0KCUNPTVBMRVRFRBAEEg0KCUNBTkNFTExFRBAF');
@$core.Deprecated('Use createGameRequestDescriptor instead')
const CreateGameRequest$json = const {
  '1': 'CreateGameRequest',
};

/// Descriptor for `CreateGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGameRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVHYW1lUmVxdWVzdA==');
@$core.Deprecated('Use createGameResponseDescriptor instead')
const CreateGameResponse$json = const {
  '1': 'CreateGameResponse',
  '2': const [
    const {'1': 'created_game', '3': 1, '4': 1, '5': 11, '6': '.Game', '10': 'createdGame'},
  ],
};

/// Descriptor for `CreateGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGameResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVHYW1lUmVzcG9uc2USKAoMY3JlYXRlZF9nYW1lGAEgASgLMgUuR2FtZVILY3JlYXRlZEdhbWU=');
@$core.Deprecated('Use gameDescriptor instead')
const Game$json = const {
  '1': 'Game',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'owner', '3': 2, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'participants', '3': 3, '4': 3, '5': 9, '10': 'participants'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.GameStatus', '10': 'status'},
  ],
};

/// Descriptor for `Game`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameDescriptor = $convert.base64Decode('CgRHYW1lEg4KAmlkGAEgASgJUgJpZBIUCgVvd25lchgCIAEoCVIFb3duZXISIgoMcGFydGljaXBhbnRzGAMgAygJUgxwYXJ0aWNpcGFudHMSIwoGc3RhdHVzGAQgASgOMgsuR2FtZVN0YXR1c1IGc3RhdHVz');
