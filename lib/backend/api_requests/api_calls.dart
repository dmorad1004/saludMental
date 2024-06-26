import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

// const _kPrivateApiFunctionName = 'ffPrivateApiCall';
const anonApiKey =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF1dHVzbWV0Z2tkcnR0Y29ldmxkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDgzODQwOTAsImV4cCI6MjAyMzk2MDA5MH0.vVpgZdl_JaASpiHA2HiYtJJ4seV-F820DXU8-gZlhvo";

class GetUserByIdCall {
  static Future<ApiCallResponse> call({
    String? id = '0',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET USER BY ID',
      apiUrl:
          'https://qutusmetgkdrttcoevld.supabase.co/rest/v1/users?id=eq.$id',
      callType: ApiCallType.GET,
      headers: {
        'apikey': anonApiKey,
        'Authorization': 'Bearer $anonApiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[:].email''',
      );
  static dynamic phoneNumber(dynamic response) => getJsonField(
        response,
        r'''$[:].phone_number''',
      );
  static dynamic statusId(dynamic response) => getJsonField(
        response,
        r'''$[:].status_id''',
      );
  static dynamic medicalConditionId(dynamic response) => getJsonField(
        response,
        r'''$[:].medical_condition_id''',
      );
  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
      );
  static dynamic updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updated_at''',
      );
  static dynamic codeId(dynamic response) => getJsonField(
        response,
        r'''$[:].code_id''',
      );
}

class GetHospitalByIdCall {
  static Future<ApiCallResponse> call({
    int? id = 0,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET HOSPITAL BY ID',
      apiUrl:
          'https://qutusmetgkdrttcoevld.supabase.co/rest/v1/hospitals?id=eq.$id',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '$anonApiKey',
        'Authorization': 'Bearer $anonApiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
      );
  static dynamic address(dynamic response) => getJsonField(
        response,
        r'''$[:].address''',
      );
  static dynamic city(dynamic response) => getJsonField(
        response,
        r'''$[:].city''',
      );
  static dynamic state(dynamic response) => getJsonField(
        response,
        r'''$[:].state''',
      );
  static dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$[:].phone''',
      );
  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
      );
  static dynamic updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updated_at''',
      );
}

// class GetAppointmentByIdCall {
//   static Future<ApiCallResponse> call({
//     int? id = 0,
//   }) async {
//     return ApiManager.instance.makeApiCall(
//       callName: 'GET APPOINTMENT BY ID',
//       apiUrl:
//           'https://qutusmetgkdrttcoevld.supabase.co/rest/v1/appointments?id=eq.$id',
//       callType: ApiCallType.GET,
//       headers: {
//         'apikey': '$anonApiKey',
//         'Authorization': 'Bearer $anonApiKey',
//       },
//       params: {},
//       returnBody: true,
//       encodeBodyUtf8: false,
//       decodeUtf8: false,
//       cache: false,
//       alwaysAllowBody: false,
//     );
//   }
//
//   static dynamic id(dynamic response) => getJsonField(
//         response,
//         r'''$[:].id''',
//       );
//   static dynamic userId(dynamic response) => getJsonField(
//         response,
//         r'''$[:].user_id''',
//       );
//   static dynamic hospitalId(dynamic response) => getJsonField(
//         response,
//         r'''$[:].hospital_id''',
//       );
//   static dynamic appointmentDate(dynamic response) => getJsonField(
//         response,
//         r'''$[:].appointment_date''',
//       );
//   static dynamic createdAt(dynamic response) => getJsonField(
//         response,
//         r'''$[:].created_at''',
//       );
//   static dynamic updatedAt(dynamic response) => getJsonField(
//         response,
//         r'''$[:].updated_at''',
//       );
// }

class GetAppointmentByUserIdCall {
  static Future<ApiCallResponse> call({
    String? userId = '0',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET APPOINTMENT BY USER ID',
      apiUrl:
          'https://qutusmetgkdrttcoevld.supabase.co/rest/v1/appointments?user_id=eq.$userId',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '$anonApiKey',
        'Authorization': 'Bearer $anonApiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$[:].user_id''',
      );
  static dynamic hospitalId(dynamic response) => getJsonField(
        response,
        r'''$[:].hospital_id''',
      );
  static dynamic appointmentDate(dynamic response) => getJsonField(
        response,
        r'''$[:].appointment_date''',
      );
  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
      );
  static dynamic updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updated_at''',
      );
}

class GetCodeByIdCall {
  static Future<ApiCallResponse> call({
    int? id = 0,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET CODE BY ID',
      apiUrl:
          'https://qutusmetgkdrttcoevld.supabase.co/rest/v1/user_codes?id=eq.$id',
      callType: ApiCallType.GET,
      headers: {
        'apikey': anonApiKey,
        'Authorization': 'Bearer $anonApiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$[:].code''',
      );
  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
      );
  static dynamic updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updaed_at''',
      );
}

class CreateNewSymptomReportCall {
  static Future<ApiCallResponse> call({
    String? userId = '0',
    bool? molestiaSitio,
    int? molestiaSitioId = 0,
    int? molestiaSitioGrado = 0,
    bool? molestiaGeneral,
    int? molestiaGeneralId = 0,
    int? molestiaGeneralGrado = 0,
    int? broteId = 0,
    bool? solicitaComunicacion,
    int? alteracionDiariaSitio = 5,
    String? date = '',
    String? molestiaSitioOtra = '',
    bool? molestiaSitioPersistente,
    String? molestiaSitioImg = '',
    String? molestiaGeneralOtra = '',
    bool? molestiaGeneralPersistente,
    String? molestiaGeneralImg = '',
    int? alteracionDiariaGeneral = 5,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId",
  "molestia_sitio": $molestiaSitio,
  "molestia_sitio_id": $molestiaSitioId,
  "molestia_sitio_grado": $molestiaSitioGrado,
  "molestia_sitio_otra": "$molestiaSitioOtra",
  "molestia_sitio_persistente": $molestiaSitioPersistente,
  "molestia_sitio_img": "$molestiaSitioImg",
  "molestia_general": $molestiaGeneral,
  "molestia_general_id": $molestiaGeneralId,
  "molestia_general_grado": $molestiaGeneralGrado,
  "molestia_general_otra": "$molestiaGeneralOtra",
  "molestia_general_persistente": $molestiaGeneralPersistente,
  "molestia_general_img": "$molestiaGeneralImg",
  "brote_id": $broteId,
  "solicita_comunicacion": $solicitaComunicacion,
  "alteracion_diaria_sitio": $alteracionDiariaSitio,
  "alteracion_diaria_general": $alteracionDiariaGeneral,
  "date": "$date"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CREATE NEW SYMPTOM REPORT',
      apiUrl:
          'https://qutusmetgkdrttcoevld.supabase.co/rest/v1/symptom_reports',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '$anonApiKey',
        'Authorization': 'Bearer $anonApiKey',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSymptomReportsByUserIdCall {
  static Future<ApiCallResponse> call({
    String? userId = '0',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET SYMPTOM REPORTS BY USER ID',
      apiUrl:
          'https://qutusmetgkdrttcoevld.supabase.co/rest/v1/symptom_reports?user_id=eq.$userId',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '$anonApiKey',
        'Authorization': 'Bearer $anonApiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
  static List? userId(dynamic response) => getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?;
  static List? date(dynamic response) => getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?;
  static List? image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?;
  static List? createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?;
  static List? updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updated_at''',
        true,
      ) as List?;
  static List? deletedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].deleted_at''',
        true,
      ) as List?;
  static List? molestiaSitio(dynamic response) => getJsonField(
        response,
        r'''$[:].molestia_sitio''',
        true,
      ) as List?;
  static List? molestiaGeneral(dynamic response) => getJsonField(
        response,
        r'''$[:].molestia_general''',
        true,
      ) as List?;
  static List? persistente(dynamic response) => getJsonField(
        response,
        r'''$[:].persistente''',
        true,
      ) as List?;
  static List? solicitaComunicacion(dynamic response) => getJsonField(
        response,
        r'''$[:].solicita_comunicacion''',
        true,
      ) as List?;
  static List? molestiaSitioId(dynamic response) => getJsonField(
        response,
        r'''$[:].molestia_sitio_id''',
        true,
      ) as List?;
  static List? molestiaSitioGrado(dynamic response) => getJsonField(
        response,
        r'''$[:].molestia_sitio_grado''',
        true,
      ) as List?;
  static List? molestiaGeneralId(dynamic response) => getJsonField(
        response,
        r'''$[:].molestia_general_id''',
        true,
      ) as List?;
  static List? molestiaGeneralGrado(dynamic response) => getJsonField(
        response,
        r'''$[:].molestia_general_grado''',
        true,
      ) as List?;
  static List? broteId(dynamic response) => getJsonField(
        response,
        r'''$[:].brote_id''',
        true,
      ) as List?;
  static List? alteracionDiaria(dynamic response) => getJsonField(
        response,
        r'''$[:].alteracion_diaria''',
        true,
      ) as List?;
}

class GetSymptomReportsByIdCall {
  static Future<ApiCallResponse> call({
    int? id = 0,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET SYMPTOM REPORTS BY  ID',
      apiUrl:
          'https://qutusmetgkdrttcoevld.supabase.co/rest/v1/symptom_reports?id=eq.$id',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '$anonApiKey',
        'Authorization': 'Bearer $anonApiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  static String? date(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].date''',
      ));
  static String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
  static bool? molestiaSitio(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].molestia_sitio''',
      ));
  static bool? molestiaGeneral(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$[:].molestia_general''',
      ));
  static bool? persistente(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].persistente''',
      ));
  static bool? solicitaComunicacion(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$[:].solicita_comunicacion''',
      ));
  static int? molestiaSitioId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].molestia_sitio_id''',
      ));
  static int? molestiaSitioGrado(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].molestia_sitio_grado''',
      ));
  static int? molestiaGeneralId(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].molestia_general_id''',
      ));
  static int? molestiaGeneralGrado(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].molestia_general_grado''',
      ));
  static int? alteracionDiaria(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$[:].alteracion_diaria''',
      ));
  static int? broteId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].brote_id''',
      ));
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
      );
}

class GetCodeByCodeCall {
  static Future<ApiCallResponse> call({
    String? code = '0',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET CODE BY CODE',
      apiUrl:
          'https://qutusmetgkdrttcoevld.supabase.co/rest/v1/user_codes?code=eq.$code',
      callType: ApiCallType.GET,
      headers: {
        'apikey': anonApiKey,
        'Authorization': 'Bearer $anonApiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$[:].code''',
      );
  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
      );
  static dynamic updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updaed_at''',
      );
}

class GetUserByCodeIdCall {
  static Future<ApiCallResponse> call({
    int? codeId = 0,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET USER BY CODE ID',
      apiUrl:
          'https://qutusmetgkdrttcoevld.supabase.co/rest/v1/users?code_id=eq.$codeId',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '$anonApiKey',
        'Authorization': 'Bearer $anonApiKey',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$[:].email''',
      );
  static dynamic phoneNumber(dynamic response) => getJsonField(
        response,
        r'''$[:].phone_number''',
      );
  static dynamic statusId(dynamic response) => getJsonField(
        response,
        r'''$[:].status_id''',
      );
  static dynamic medicalConditionId(dynamic response) => getJsonField(
        response,
        r'''$[:].medical_condition_id''',
      );
  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$[:].created_at''',
      );
  static dynamic updatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].updated_at''',
      );
  static dynamic codeId(dynamic response) => getJsonField(
        response,
        r'''$[:].code_id''',
      );
}

class SendEmailRecoverPasswordCall {
  static Future<ApiCallResponse> call({
    String? email = '0',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SEND EMAIL RECOVER PASSWORD',
      apiUrl: 'https://qutusmetgkdrttcoevld.supabase.co/auth/v1/recover',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '$anonApiKey',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserCall {
  static Future<ApiCallResponse> call({
    String? userToken = '',
    String? email = '',
    String? newPassword = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$newPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UPDATE USER',
      apiUrl: 'https://qutusmetgkdrttcoevld.supabase.co/auth/v1/user',
      callType: ApiCallType.PUT,
      headers: {
        'apikey': '$anonApiKey',
        'Authorization': 'Bearer $userToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
