// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportStruct extends BaseStruct {
  ReportStruct({
    int? id,
    String? userId,
    int? severityId,
    String? date,
    String? notes,
    String? image,
  })  : _id = id,
        _userId = userId,
        _severityId = severityId,
        _date = date,
        _notes = notes,
        _image = image;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;
  bool hasUserId() => _userId != null;

  // "severity_id" field.
  int? _severityId;
  int get severityId => _severityId ?? 0;
  set severityId(int? val) => _severityId = val;
  void incrementSeverityId(int amount) => _severityId = severityId + amount;
  bool hasSeverityId() => _severityId != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;
  bool hasDate() => _date != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;
  bool hasNotes() => _notes != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  static ReportStruct fromMap(Map<String, dynamic> data) => ReportStruct(
        id: castToType<int>(data['id']),
        userId: data['user_id'] as String?,
        severityId: castToType<int>(data['severity_id']),
        date: data['date'] as String?,
        notes: data['notes'] as String?,
        image: data['image'] as String?,
      );

  static ReportStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReportStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'severity_id': _severityId,
        'date': _date,
        'notes': _notes,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'severity_id': serializeParam(
          _severityId,
          ParamType.int,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReportStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        severityId: deserializeParam(
          data['severity_id'],
          ParamType.int,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportStruct &&
        id == other.id &&
        userId == other.userId &&
        severityId == other.severityId &&
        date == other.date &&
        notes == other.notes &&
        image == other.image;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, userId, severityId, date, notes, image]);
}

ReportStruct createReportStruct({
  int? id,
  String? userId,
  int? severityId,
  String? date,
  String? notes,
  String? image,
}) =>
    ReportStruct(
      id: id,
      userId: userId,
      severityId: severityId,
      date: date,
      notes: notes,
      image: image,
    );
