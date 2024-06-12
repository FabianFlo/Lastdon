import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetRouteCall {
  static Future<ApiCallResponse> call({
    double? endLngV,
    double? endLatV,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRoute',
      apiUrl:
          'https://api.mapbox.com/directions/v5/mapbox/driving/{startLng},{startLat};{endLng},{endLat}?access_token=sk.eyJ1IjoiYWNhY2FkbyIsImEiOiJjbHd5anV4cXExbXpkMmtxN3NkaWJ1NjdjIn0.x1Sw2m6nJ2mIkXe22GE_ug',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'startLng': -70.6531153,
        'startLat': -33.4966794,
        'endLng': endLngV,
        'endLat': endLatV,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? routeCoordinates(dynamic response) => getJsonField(
        response,
        r'''$.routes[0].geometry.coordinates''',
        true,
      ) as List?;
  static String? errorLatitudeBad(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? invalideInput(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
