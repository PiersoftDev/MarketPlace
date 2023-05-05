import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Master data management API Group Code

class MasterDataManagementAPIGroup {
  static String baseUrl = 'http://13.232.221.196:8080';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SearchProjectUsingGETCall searchProjectUsingGETCall =
      SearchProjectUsingGETCall();
}

class SearchProjectUsingGETCall {
  Future<ApiCallResponse> call({
    String? projectName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'searchProjectUsingGET',
      apiUrl:
          '${MasterDataManagementAPIGroup.baseUrl}/v1/masters/projects/searchProject/${projectName}',
      callType: ApiCallType.GET,
      headers: {
        ...MasterDataManagementAPIGroup.headers,
      },
      params: {
        'projectName': projectName,
      },
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Master data management API Group Code

class HttpvmastersprojectssearchProjectjCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'httpvmastersprojectssearchProjectj',
      apiUrl: 'http://13.232.221.196:8080/v1/masters/projects/searchProject/j',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
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
