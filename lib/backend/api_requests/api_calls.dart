import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchProjectByProjectNameCall {
  static Future<ApiCallResponse> call({
    String? projectName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'searchProjectByProjectName',
      apiUrl:
          'http://13.232.221.196:8080/v1/masters/projects/searchProject/${projectName}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'projectName': projectName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SearchActivityByProjectCodeCall {
  static Future<ApiCallResponse> call({
    String? projectCode = '',
  }) {
    final body = '''
{
  "projectCode": "${projectCode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchActivityByProjectCode',
      apiUrl:
          'http://13.232.221.196:8080/v1/masters/project-activities/searchProjectActivity',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
