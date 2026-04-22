import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ChatIAmenosdoisdiasCall {
  static Future<ApiCallResponse> call({
    int? agendamentoId,
  }) async {
    final ffApiRequestBody = '''
{
  "acao": "iniciar_chat",
  "agendamento_id": ${agendamentoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ChatIAmenosdoisdias',
      apiUrl: 'https://vzebyzafweyqspqxhihq.supabase.co/functions/v1/chat_ia',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6ZWJ5emFmd2V5cXNwcXhoaWhxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDM5NDI4NTgsImV4cCI6MjA1OTUxODg1OH0.ew3ObFgyUpId9-zyGLeH9pGH2LUlQvYbBp0hGRcU5_k',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6ZWJ5emFmd2V5cXNwcXhoaWhxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDM5NDI4NTgsImV4cCI6MjA1OTUxODg1OH0.ew3ObFgyUpId9-zyGLeH9pGH2LUlQvYbBp0hGRcU5_k',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
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

String _toEncodable(dynamic item) {
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
