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

class ItemSelectionCall {
  static Future<ApiCallResponse> call({
    String? itemDesc = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'itemSelection',
      apiUrl: 'http://13.232.221.196:8080/v1/masters/items/list/${itemDesc}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'itemDesc': itemDesc,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SaveMaterialIndentCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
    String? itemId = '',
    String? itemDesc = '',
    String? categoryId = '',
    String? category = '',
    double? quantity,
    String? uom = '',
    String? plannedDate = '',
    String? projectId = '',
    String? projectDesc = '',
    String? activityId = '',
    String? activityDesc = '',
    String? createdDate = '',
    String? userId = '',
    String? username = '',
  }) {
    final body = '''
{
  "orderId": "${orderId}",
  "itemId": "${itemId}",
  "itemDesc": "${itemDesc}",
  "categoryId": "${categoryId}",
  "category": "${category}",
  "quantity": ${quantity},
  "uom": "${uom}",
  "plannedDate": "${plannedDate}",
  "projectId": "${projectId}",
  "projectDesc": "${projectDesc}",
  "activityId": "${activityId}",
  "activityDesc": "${activityDesc}",
  "createdDate": "${createdDate}",
  "budgetedQty": 0,
  "inventory": 0,
  "procuredTillDate": 0,
  "userId": "${userId}",
  "username": "${username}",
  "cmp": 0,
  "variance": 0,
  "status": "DRAFT"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'saveMaterialIndent',
      apiUrl:
          'http://13.232.221.196:9091/v1/purchase/material-indent/add-material',
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

class SubmitOrderCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'submitOrder',
      apiUrl:
          'http://13.232.221.196:9091/v1/purchase/material-indent/confirm/${orderId}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'oderId': orderId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetLinesByIdCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getLinesById',
      apiUrl:
          'http://13.232.221.196:9091/v1/purchase/material-indent/${orderId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'orderId': orderId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAllLinesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllLines',
      apiUrl: 'http://13.232.221.196:9091/v1/purchase/material-indent/',
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
